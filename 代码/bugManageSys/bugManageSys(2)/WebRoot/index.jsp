<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>我的主页</title>
</head>
<body>
    <%@ include file="jsp/header.jsp"%> 

    <!-- 主页内容 -->   
 <div class="jumbotron masthead"
 style="background-image: url(aaa.jpg); background-repeat: repeat; text-align: center">
 <br />
 <br />
 <br />
 <br />
 <br />
 <h1>
 <font color="#ffffff">FY18企业项目实践解决方案</font>
 </h1>
 <h2>
 <font color="#ffffff">This is my BugManageSystem.</font>
 </h2>
 <br />
 <br />
 <br />
 <br />
 <br />
 </div>
 
 
 <div class="container">
 <div class="row">
 <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 " >
 <div class="panel panel-default" style="background-image: url(aaa.jpg); background-repeat: repeat; text-align: center">
 <div class="panel-body">
 <h2 >
 <center><a href="<%=request.getContextPath() %>/user/queryAllUsers.action">用户管理</a>
</center>
 </h2>

 </div>
 </div>
 </div>
 
 <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
 <div class="panel panel-default"style="background-image: url(aaa.jpg); background-repeat: repeat; text-align: center">
 <div class="panel-body">
 <h2>
 <center><a href="<%=request.getContextPath() %>/proj/queryAllProjs.action">项目管理</a>
                    </center>
 </h2>
 </div>
 </div>
 </div>
 
 <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
 <div class="panel panel-default"style="background-image: url(aaa.jpg); background-repeat: repeat; text-align: center">
 <div class="panel-body">
 <h2>
 <center><a href="<%=request.getContextPath() %>/bug/queryAllBugs.action">问题管理</a></center>
 </h2>
 </div>
 
 </div>
 </div>
 </div>
 
 
 <div class="panel panel-default" >
 <div  style="text-align: center">
 Dalian University of Technology & Neusoft.
 </div>
 </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body> 
</html>
