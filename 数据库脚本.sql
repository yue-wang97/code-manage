-------------------------�û����ݿ�-------------------------------------
--����user_role
create table user_role(

role_id number(2) primary key,
role_name varchar(20) not null

)


--����bug_user
create table bug_user(
 user_id number(2) primary key,
 username varchar(20) not null,
 pwd varchar(20) not null,
 realname varchar(20) not null,
 email varchar(20),
 role_id number(2),
 constraint fk_roleid foreign key(role_id)references user_role(role_id)
)


--����user_role
insert into user_role values(1,'����Ա')
insert into user_role values(2,'��ͨ�û�')
select * from user_role

--����bug_user
insert into bug_user values(user_index.nextval,'good','123','wyy','111@qq.com',1)
insert into bug_user values(user_index.nextval,'wty','1234','ggsdx','222sdfs@qq.com',2)
select * from  bug_user
delete from bug_user


--��������
create sequence user_index
minvalue 1
maxvalue 9999999
start with 20
increment by 1
cache 2000; 
--��������
select user_index.Nextval from dual;

DROP SEQUENCE user_index;

--����bug_type
create table bug_type(
type_id number(3) primary key,
type_name varchar(20) not null
)
--����bug_type
insert into bug_type values(1,'��΢')
insert into bug_type values(2,'һ��')
insert into bug_type values(3,'����')
select * from bug_type


--����bug_status
create table bug_status(
status_id number(2) primary key,
status_name varchar(20) not null
)
--����bug_status
insert into bug_status values(1,'�ѹر�')
insert into bug_status values(2,'������')
select * from bug_status

--myeclipes.xml
<!-- ����ȫ���û���Ϣ -->
  <select id="queryAllUsers"  resultMap="userMap">
    select b.*,u.role_name from bug_user b,user_role u where b.role_id=u.role_id
  </select>
  <!-- ����û� -->
  <insert id="addUser" parameterType="user">
    insert into bug_user values(user_index.nextval,#{userName},#{pwd},#{realName},#{email},#{user_role.role_id})
  </insert>
  <!-- ɾ���û� -->
  <delete id="deletUser" parameterType="user">
    delete from bug_user where user_id=#{user_id}
  </delete>
  
  <!-- �����������û� -->
  <select id="queryUserByItems" parameterType="user" resultMap="userMap">
    select b.*,u.role_name from bug_user b,user_role u  
    <where>
      b.role_id=u.role_id
      <if test="userName!=null or userName!=''">
        and username like '%${userName}%' 
      </if>
      <if test="realName!=null or realName!=''">
        and realname like '%${realName}%' 
      </if>
    </where>
  </select>
  
  <!--�����û�-->
  <update id="alterUser" parameterType="user">
  update bug_user
    <set>
    userName=#{userName,jdbcType=VARCHAR},
    pwd=#{pwd,jdbcType=VARCHAR},
    realName=#{realName,jdbcType=VARCHAR},
    Role_ID=#{user_role.role_id},
    email=#{email,jdbcType=VARCHAR}
    </set>
  where user_id=#{user_id}
  </update>

----------------------�������ݿ�------------------------------------
--����bug_list
create table bug_list(
 proj_id number(2) not null,
 bug_id number(2) primary key,
 bugname varchar(20) not null,
 maker varchar(20) not null,
 user_id number(2) not null,
 type_id number(2) not null,
 status_id number(2) not null,
 solve varchar(20),
 existdate varchar(20) not null,
 solvedate varchar(20) not null,
 constraint fk3_roleid foreign key(proj_id)references proj_list(proj_id),
 constraint fk1_roleid foreign key(type_id)references bug_type(type_id),
 constraint fk2_roleid foreign key(status_id)references bug_status(status_id),
 constraint fkroleid foreign key(user_id)references bug_user(user_id)
)
--��������
create sequence bug_index
minvalue 1
maxvalue 9999999
start with 20
increment by 1
cache 20; 
--��������
select bug_index.Nextval from dual;

DROP SEQUENCE bug_index;
--��������bug_list

insert into bug_list values(3,bug_index.nextval,'ȱ������','wy',1,1,1,'5dsf','2018-5-1','2018-5-17')
insert into bug_list values(1,bug_index.nextval,'�½�����','wy',2,2,2,'�������ģ�','2018-5-1','2018-5-17')
select * from bug_list

--myecpis���
--����

insert into bug_list values(#{proj.proj_id},bug_index.nextval,#{bugname},#{maker},
#{user.user_id},#{bug_type.type_id},#{bug_status.status_id},#{solve},#{existdate},#{solvedate})

--����ȫ��
select b.*,  u.type_name,  a.status_name,   w.*,   v.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id
     and b.user_id=v.user_id 
     
select b.*,  u.type_name,  a.status_name,   w.*,   v.userName
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id 
     and b.user_id=v.user_id   
     
      select b.*,  u.type_name,  a.status_name,   w.*,   v.*,t.*,x.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v, proj_list t,  bug_user x
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id 
     and b.user_id=v.user_id    and t.user_id=x.user_id and b.proj_id=t.proj_id
--ɾ��bug
delete from bug_list where bug_id=#{bug_id}

-- ��ID����
    select b.*,  u.type_name,  a.status_name,   w.proj_name,   v.username
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id and b.user_id=v.user_id  
				 and bug_id= ${bug_id} 

-- ��PRO_ID���� 
		   select b.*,  u.type_name,  a.status_name,   w.proj_name,   v.username
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id and b.user_id=v.user_id 
				 and b.proj_id= ${proj_id}
         
--ͳ����������    
select count(bug_id) from bug_list
--myeclipes.xml
<!-- ����ȫ����Ϣ -->
  <select id="queryAllBugs"  resultMap="bugMap">  
   select b.*,  u.type_name,  a.status_name,   w.*,   v.*,t.*,x.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v, proj_list t,  bug_user x
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id 
     and b.user_id=v.user_id    and t.user_id=x.user_id and b.proj_id=t.proj_id
  </select>
  
  <!-- ���bug -->
    <insert id="addBug" parameterType="bug">
    
insert into bug_list values(#{proj.proj_id},bug_index.nextval,#{bugname},#{maker},
#{user.user_id},#{bug_type.type_id},#{bug_status.status_id},#{solve},#{existdate},#{solvedate})

   </insert>  
        
  <!-- ɾ��bug -->
  <delete id="deletBug" parameterType="bug">
    delete from bug_list where bug_id=#{bug_id}
  </delete>
  
  
  <!-- ���������� -->
  <select id="queryBugByItems" parameterType="bug" resultMap="bugMap">
    select b.*,  u.type_name,  a.status_name,   w.*,   v.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id and b.user_id=v.user_id 
         and bug_id= ${bug_id} 
  </select>
  
  <!-- ��PRO_ID���� -->
  <sql id="sqll">
    <if test="proj_id!=0">
     and b.proj_id=#{proj_id}
    </if>
  </sql>
  <select id="queryBugByP" parameterType="proj" resultMap="bugMap">
       select b.*,  u.type_name,  a.status_name,   w.*,   v.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id and b.user_id=v.user_id 
       and b.proj_id= ${proj_id} 
    <include refid="sqll"></include>
  </select>
  
  <!-- ��user_ID���� -->
  <sql id="sqlll">
    <if test="user_id!=0">
     and b.user_id=#{user_id}
    </if>
  </sql>
  <select id="queryBugByU" parameterType="user" resultMap="bugMap">
       select b.*,  u.type_name,  a.status_name,   w.*,   v.*
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id and b.user_id=v.user_id 
       and b.user_id= ${user_id} 
    <include refid="sqlll"></include>
  </select>
  
  <!-- ͳ���������� -->
  <select id="countbugs"  resultMap="bugMap"> 
 select b.*,  u.type_name,  a.status_name,   w.*,   v.userName
   from bug_list b,  bug_type u,  bug_status a,  proj_list w,  bug_user v
     where b.type_id=u.type_id and b.status_id=a.status_id  and b.proj_id=w.proj_id 
     and b.user_id=v.user_id    
  </select>
-------------------------��Ŀ���ݿ�------------------------------------------
--����proj_list
create table proj_list(
 user_id number(2) not null,
 proj_id number(2) primary key,
 keyword varchar(20) not null,
 proj_name varchar(20) not null,
 proj_info varchar(20),
 s_date varchar(20) not null,
 manager varchar(20),
 constraint fk5_roleid foreign key(user_id)references bug_user(user_id)
)
--��������
create sequence proj_index
minvalue 1
maxvalue 9999999
start with 20
increment by 1
cache 20; 
--��������
select proj_index.Nextval from dual;
DROP SEQUENCE proj_index;
--����proj_list
insert into proj_list values(2,proj_index.nextval,'�ؼ���','��Ŀһ','jimyinfomation','2018-5-1','wy')
insert into proj_list values(1,proj_index.nextval,'bugManage','���ȱ�ݹ���ϵͳ','jimyinfomation','2018-5-1','wy')
insert into proj_list values(1,proj_index.nextval,'�ؼ���','��Ŀ��','kaka','2018-5-1','kaikai')
--myecpis���
select b.*,u.user_id from proj_list b,bug_user u where b.user_id=u.user_id

--�����Ŀ
insert into proj_list values(#{user.user_id},proj_index.nextval,#{keyword},#{proj_name},#{proj_info},
		      #{s_date},#{manager})
          
insert into proj_list values(1,proj_index.nextval,'databa','nome','information',
		      '2015','sys')
          
--myecpilse.xml
<!-- ����ȫ����Ŀ��Ϣ -->
  <select id="queryAllProjs"  resultMap="projMap">
    select b.*,u.* from proj_list b,bug_user u where b.user_id=u.user_id
  </select>
  
  <!-- �����Ŀ -->
  <insert id="addProj" parameterType="proj">
    insert into proj_list values(#{user.user_id},proj_index.nextval,#{keyword},#{proj_name},#{proj_info},
          #{s_date},#{manager})
  </insert>

