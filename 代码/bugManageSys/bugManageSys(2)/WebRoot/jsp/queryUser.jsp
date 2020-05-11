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

  <form action="<%=request.getContextPath() %>/user/ queryUserByItems.action" method="post">
  	 用户名：<input type="text" name="userName"/><br/>
  	 真实姓名：<input type="text" name="realName"/><input type="submit" value="搜索"><br/>
  	<table border="1" width="100%">
  		<tr>
  			<td>用户名</td>
  			<td>真实姓名</td>
  			<td>密码</td>
  			<td>角色</td>
  			<td>邮箱</td>
  			<td><a href="#">修改</a>|<a href="#">删除</a></td>
  		</tr>
  		<!-- 接收集合数据 -->
  		<c:forEach items="${Users}" var="us">
  			<tr>
  			<td>${us.userName}</td>
  			<td>${us.realName}</td>
  			<td>${us.pwd}</td>
  			<td>${us.user_role.role_name}</td>
  			<td>${us.email}</td>
  			<td><a href="#">修改</a>|<a href="#">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
    
  </form>
   
  </body>
</html>
