<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>新建项目</title>
</head>
<body>
    <%@ include file="header.jsp"%> 

  	<form action="<%=request.getContextPath() %>/proj/addProj.action" method="post">
  		
  			 <div class="form1">
    <label >项目基本信息</label>
  </div>
  <table border="2" align="center" class="form">
  			<tr>
  				<td>用户ID：</td>
  				<td><input type="text" name="user.user_id"/></td>
  			</tr>
  			<tr>
  				<td>关键字：</td>
  				<td><input type="text" name="keyword"/></td>
  			</tr>
  			<tr>
  				<td>项目名称：</td>
  				<td><input type="text" name="proj_name"/></td>
  			</tr>
  			<tr>
  				<td>项目描述信息：</td>
  				<td><input type="text" name="proj_info"/></td>
  			</tr>
  			<tr>
  				<td>创建日期：</td>
  				<td><input type="text" name="s_date"/></td>
  			</tr><tr>
  				<td>项目负责人：</td>
  				<td><input type="text" name="manager"/></td>
  			</tr>
  			<tr>
  				<td></td>
  				<td><input type="submit" value="确定"/><input type="reset" value="重置"/></td>
  			</tr>
  		
  		</table>
  	</form>
    
  </body>
</html>
