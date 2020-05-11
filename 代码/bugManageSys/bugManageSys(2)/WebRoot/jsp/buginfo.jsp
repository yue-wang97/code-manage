<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>问题详情</title>


  </head>
<body>
    <%@ include file="header.jsp"%> 

  	<table border="1" width="100%">
  	<!-- 接收集合数据 -->
  		<c:forEach items="${Bugs}" var="us">
  		 <tr><td>问题详情</td></tr>
  		<tr>
  			<td>问题概要</td><td>${us.bugname}</td>
  		</tr>
  		<tr>
  			<td>项目名称</td><td>${us.proj.proj_name}</td>
  		</tr>
  		<tr>
  			<td>开发者</td><td>${us.maker}</td>
  		</tr>
  		<tr>
  			<td>报告人</td><td>${us.user.userName}</td>
  		</tr>
  		<tr>
  			<td>优先级</td><td>${us.bug_type.type_name}</td>
  		</tr>
  		<tr>
  			<td>状态</td><td>${us.bug_status.status_name}</td>
  		</tr>
  		<tr>
  			<td>解决形式</td><td>${us.solve}</td>
  		</tr>
  		<tr>
  			<td>创建日期</td><td>${us.existdate}</td>
  		</tr>
  		<tr>
  			<td>处理日期</td><td>${us.solvedate}</td>
  		</tr>
  		</c:forEach>	 
  	</table>
   
  </body>
</html>
