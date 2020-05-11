<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>用户登录</title>


  </head>
<body>
    <%@ include file="header.jsp"%> 

  <form action="<%=request.getContextPath() %>/bug/queryBugByU.action" method="post">
  	 用户ID：<input type="text" name="user_id"/><br/>
  	 <input type="submit" value="登录"><br/>
  	
  </form>
   
  </body>
</html>
