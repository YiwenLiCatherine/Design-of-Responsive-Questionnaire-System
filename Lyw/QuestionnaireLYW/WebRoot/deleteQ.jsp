<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
  <%
    String MsID = request.getParameter("questionid");
     String driverName = "com.mysql.jdbc.Driver"; 
    //加载JDBC驱动
    String dbURL = "jdbc:mysql://47.94.103.151:3306/test"; 
    //连接服务器和数据库
    String userName = "root"; //默认用户名
    String userPwd = "022ca31e"; //密码
       Class.forName(driverName);
       Connection Conn = DriverManager.getConnection(dbURL, userName, userPwd);
       String sql1="delete from question WHERE questionid=?";
       PreparedStatement pstmt1=Conn.prepareStatement(sql1);
       pstmt1.setString(1,MsID);
       pstmt1.executeUpdate();
       String sql2="delete from answer WHERE questionid=?";
       PreparedStatement pstmt2=Conn.prepareStatement(sql2);
       pstmt2.setString(1,MsID);
       pstmt2.executeUpdate();
       response.sendRedirect("admin.jsp");
       %>
</body>
</html>