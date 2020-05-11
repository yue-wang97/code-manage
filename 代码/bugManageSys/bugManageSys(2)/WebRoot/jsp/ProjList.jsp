<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>项目列表</title>

<script type="text/javascript">
	function addProj(){
		location.href="<%=request.getContextPath() %>/jsp/addProj.jsp";
	}
</script>
 </head>
<body>
    <%@ include file="header.jsp"%> 

    <input type="button" value="新建项目" onclick="addProj()">
  	<input type="button" value="用户管理" onclick="manageUser()">
  	<input type="button" value="密码修改" onclick="changePwd()">
  	<input type="button" value="退出系统" onclick="#">
  	
  	
  	<table border=1 >
  		
  		<!-- 界面标题 -->
    			
  		<!-- 表头 -->
  		<tr>
  			<td width="10%" ><strong>项目ID</strong></td>
  			<td width="10%" ><strong>项目关键字</strong></td>
  			<td width="15%"><strong>项目名称</strong></td>
  			<td width="20%"><strong>项目描述信息</strong></td>
  			<td width="10%"><strong>创建日期</strong></td>
  			<td width="10%"><strong>项目负责人</strong></td>
  			<td width="35%"><strong>操作</strong></td>
  		</tr>
  		
  		<!-- 【需改数据库】接收集合数据 -->
  		<c:forEach items="${Projs}" var="us">
  			<tr>
  				<td>${us.proj_id}</td>
  				<td>${us.keyword}</td>
  				<td>${us.proj_name}</td>
  				<td>${us.proj_info}</td>
  				<td>${us.s_date}</td>
  				<td>${us.manager}</td>
  				<td>
  					<a href="<%=request.getContextPath()%>/bug/queryBugByP.action?proj_id=${us.proj_id}">问题列表</a>
  					|<a href="#">项目模块</a>
  					|<a href="#">任务分配</a>
  					|<a href="#">修改</a>
  					|<a href="#">删除</a>
  					</td>
  			</tr>
  		</c:forEach>
  	</table>





  </body>
</html>
