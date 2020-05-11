<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>新建用户</title>
</head>
<body>
    <%@ include file="header.jsp"%> 

  	<form action="<%=request.getContextPath() %>/user/addUser.action" method="post">
  		 <div class="form1">
    <label >用户基本信息</label>
  </div>
  
  <div class="form">
    <label >用户名：</label>
    <input type="text" class="form-control" name="userName" placeholder="用户名...">
    
     <label >密码：</label>
    <input type="text" class="form-control" name="pwd" placeholder="请设置密码。。">
     <label >真实姓名：</label>
    <input type="text" class="form-control" name="realName" placeholder="请输入真实姓名">
     <label >邮箱：</label>
    <input type="text" class="form-control" name="email" placeholder="邮箱地址？？">
    <label >角色：</label>
    <select class="form-control" name="user_role.role_id">
  					<option value="1">>管理员</option>
  					<option value="2">普通用户</option>
  				</select>
 <label><button type="submit" >提交</button></label><label><button type="reset" >重置</button></label>
  </div>
</form>

    
  </body>
</html>
