<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>sucess!</title>

<script type="text/javascript">
	function addUser(){
		location.href="<%=request.getContextPath() %>/jsp/addUser.jsp";
	}
	
	function queryUser(){
		location.href="<%=request.getContextPath() %>/jsp/queryUser.jsp";
	}

	function del(user_id){
	document.forms[0].action="<%=request.getContextPath() %>/user/deletUser.action?user_id="+user_id;
	document.forms[0].submit();
	}
	
	function alterUser(){
	    location.href="<%=request.getContextPath() %>/jsp/alterUser.jsp";
    }
</script>

 </head>
  
  <body>
    <%@ include file="header.jsp"%> 

   <form action="<%=request.getContextPath() %>/user/deletUser.action" method="post">
  	<input type="button" value="新建用户" onclick="addUser()">
  	<input type="button" value="搜索用户" onclick="queryUser()">
  	<input type="button" value="返回" onclick="location.href='#'">
  	<table border="1" width="100%">
  		<tr>
  			<td>用户ID</td>
  			<td>用户名</td>
  			<td>真实姓名</td>
  			<td>密码</td>
  			<td>角色</td>
  			<td>邮箱</td>
  			<td>操作</td>
  		</tr>
  		<!-- 接收集合数据 -->
  		<c:forEach items="${Users}" var="us">
  			<tr>
  			<td>${us.user_id}</td>
  			<td>${us.userName}</td>
  			<td>${us.realName}</td>
  			<td>${us.pwd}</td>
  			<td>${us.user_role.role_name}</td>
  			<td>${us.email}</td>
  			<td><a href="javascript:alterUser()">修改</a>|<a href="javascript:del(${us.user_id})">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
    </form>
  </body>
</html>
