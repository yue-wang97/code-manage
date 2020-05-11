<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>问题统计</title>

<script type="text/javascript">
	function addBug(){
		location.href="<%=request.getContextPath() %>/jsp/addBug.jsp";
	}
	function login(){
		location.href="<%=request.getContextPath() %>/jsp/login.jsp";
	}
	function countBug(){
		location.href="<%=request.getContextPath() %>/bug/countbugs.action";
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

    <h1><a href="#">问题统计：${Bugs.size()} 条</a></h1>
  </body>
</html>
