<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>修改用户</title>
<script type="text/javascript">
	
    function UserList(){
		location.href="<%=request.getContextPath() %>/user/queryAllUsers.action";
	}
	
</script>

  </head>
<body>
    <%@ include file="header.jsp"%> 

  	<form action="<%=request.getContextPath() %>/user/alterUser.action" method="post">
  		<table border="1">
  			<tr>
  				<td>用户名：</td>
  				<td><input type="text" name="userName"/></td>
  			</tr>
  			<tr>
  				<td>密码：</td>
  				<td><input type="text" name="pwd"/></td>
  			</tr>
  			<tr>
  				<td>真实姓名：</td>
  				<td><input type="text" name="realName"/></td>
  			</tr>
  			<tr>
  				<td>角色：</td>
  				<td><select name="user_role.role_id">
  					<option value="1">管理员</option>
  					<option value="2">普通用户</option>
  				</select> </td>
  			</tr>
  			<tr>
  				<td>邮箱：</td>
  				<td><input type="text" name="email"/></td>
  			</tr>
  			<tr>
  				<td>用户ID：</td>
  				<td><input type="text" name="user_id"/></td>
  			</tr>
  			<tr>
  				<td></td>
  				<td><input type="submit" value="确定"/><input type="reset" value="重置"/><input type="button" value="返回" onclick="UserList()"/>
  			</tr>
  		
  		</table>
  	</form>
    
  </body>
</html>
