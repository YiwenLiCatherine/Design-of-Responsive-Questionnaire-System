<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    String radio1= request.getParameter("radio1");
    String radio2= request.getParameter("radio2");
    String radio3= request.getParameter("radio3");
    String radio4= request.getParameter("radio4");
    String radio5= request.getParameter("radio5");
    String radio6= request.getParameter("radio6");
    String radio7= request.getParameter("radio7");
    String radio8= request.getParameter("radio8");
    String radio9= request.getParameter("radio9");
    String radio10= request.getParameter("radio10");
     String driverName = "com.mysql.jdbc.Driver"; 
    //加载JDBC驱动
    String dbURL = "jdbc:mysql://localhost:3306/test"; 
    //连接服务器和数据库
    String userName = "root"; //默认用户名
    String userPwd = "123"; //密码
       Class.forName(driverName);
       Connection Conn = DriverManager.getConnection(dbURL, userName, userPwd);
       String sql="insert into answer values(?,?)";
       PreparedStatement pstmt=Conn.prepareStatement(sql);
       pstmt.setString(1,"1");
       pstmt.setString(2,radio1);
       pstmt.executeUpdate();
       pstmt.setString(1,"2");
       pstmt.setString(2,radio2);
       pstmt.executeUpdate();
       pstmt.setString(1,"3");
       pstmt.setString(2,radio3);
       pstmt.executeUpdate();
       pstmt.setString(1,"4");
       pstmt.setString(2,radio4);
       pstmt.executeUpdate();
       pstmt.setString(1,"5");
       pstmt.setString(2,radio5);
       pstmt.executeUpdate();
       pstmt.setString(1,"6");
       pstmt.setString(2,radio6);
       pstmt.executeUpdate();
       pstmt.setString(1,"7");
       pstmt.setString(2,radio7);
       pstmt.executeUpdate();
       pstmt.setString(1,"8");
       pstmt.setString(2,radio8);
       pstmt.executeUpdate();
       pstmt.setString(1,"9");
       pstmt.setString(2,radio9);
       pstmt.executeUpdate();
       pstmt.setString(1,"10");
       pstmt.setString(2,radio10);
       pstmt.executeUpdate();
       response.sendRedirect("index.jsp");%>
</body>
</html>