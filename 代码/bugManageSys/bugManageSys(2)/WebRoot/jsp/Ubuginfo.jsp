<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>sucess!</title>


<script type="text/javascript">
	function addBug(){
		location.href="<%=request.getContextPath() %>/jsp/addBug.jsp";
	}
	function login(){
		location.href="<%=request.getContextPath() %>/jsp/login.jsp";
	}
	function countBug(){
		location.href="<%=request.getContextPath() %>/jsp/countBug.jsp";
	}
	function goBug(){
		location.href="<%=request.getContextPath() %>/bug/queryAllBugs.action";
	}
	function return1(){
		location.href="<%=request.getContextPath() %>/index.jsp";
	}
	function del(bug_id){
	document.forms[0].action="<%=request.getContextPath() %>/bug/deletBug.action?bug_id="+bug_id;
	document.forms[0].submit();
	}
	
</script>



  </head>
  
  <body>
    <%@ include file="header.jsp"%> 

   <form action="<%=request.getContextPath() %>/bug/deletBug.action" method="post">
  	<input type="button" value="新建问题" onclick="addBug()">
  	<input type="button" value="我报告的问题" onclick="login()">
  	<input type="button" value="全部问题" onclick="goBug()">
  	<input type="button" value="问题统计" onclick="countBug()">
  	<input type="button" value="返回" onclick="return1()">
  	<table border="1" width="100%">
  		<tr>
  			<td>问题概要</td>
  			<td>开发者</td>
  			<td>报告人</td>
  			<td>优先级</td>
  			<td>状态</td>
  			<td>解决形式</td>
  			<td>创建日期</td>
  			<td>处理日期</td>
  			<td>操作</td>
  		</tr>
  		<!-- 接收集合数据 -->
  		<c:forEach items="${Bugs}" var="us">
  			<tr>
  			<td>${us.bugname}</td>
  			<td>${us.maker}</td>
  			<td>${us.user.userName}</td>
  			<td>${us.bug_type.type_name}</td>
  			<td>${us.bug_status.status_name}</td>
  			<td>${us.solve}</td>
  			<td>${us.existdate}</td>
  			<td>${us.solvedate}</td>
  			<td><a href="javascript:del(${us.bug_id})">删除</a>
  			</tr>
  		</c:forEach>
  	</table>
    </form>
  </body>
</html>
