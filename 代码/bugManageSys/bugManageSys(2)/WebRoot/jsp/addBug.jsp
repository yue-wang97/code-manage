<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>新建问题</title>
</head>
<body>
    <%@ include file="header.jsp"%> 

<form action="<%=request.getContextPath() %>/bug/addBug.action" method="post">
  <div class="form1">
    <label >问题基本信息</label>
  </div>
  
  <div class="form">
    <label >项目ID:</label>
    <input type="text" class="form-control" name="proj.proj_id" placeholder="项目ID">

    <label >问题概要:</label>
    <input type="text" class="form-control" name="bugname" placeholder="问题概要">

   <label >开发者：</label>
    <input type="text" class="form-control" name="maker" placeholder="开发者">

	<label >问题报告者ID：</label>
    <input type="text" class="form-control" name="user.user_id" placeholder="问题报告者ID">
    
      				
  	<label >解决形式：</label>
    <input type="text" class="form-control"  name="solve" placeholder="详细解决建议...">
    
    <label >创建日期：</label>
    <input type="text" class="form-control" name="existdate" placeholder="YYYY-MM-DD">
    
    <label >处理日期：</label>
    <input type="text" class="form-control" name="solvedate" placeholder="YYYY-MM-DD">
  
    <label >优先级：</label>   
    <select class="form-control" name="bug_type.type_id">
  					<option value="1">轻微</option>
  					<option value="2">一般</option>
  					<option value="3">严重</option>
  				</select>

  	<label >状态：</label>
    <select class="form-control" name="bug_status.status_id">
  					<option value="1">已关闭</option>
  					<option value="2">开放中</option>
  				</select>

  <button type="submit" >提交</button><button type="reset" >重置</button>
  </div>
</form>

  </body>
</html>
