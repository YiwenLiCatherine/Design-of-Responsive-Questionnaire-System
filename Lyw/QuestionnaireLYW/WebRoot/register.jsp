<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background:url(src/flower.jpg)">
    <form action="regsuccess.jsp">
    <p> </p>
    <center>
    		<br><br><br><br><br><br>
			<h2>New user registration</h2>
			<br><br><br>
			<div width:100% height:100%>
				<p class="row" >
					<label for="first-name">Name:</label>
					<input type="text" id="name" name="name1" class="field-large"/>
				</p>
				<p class="row">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password1" />
					<br><br><br>
					<input type="submit" value="Register" class="btn">
				</p>
			</div>
			</center>
    </form>
  </body>
</html>
