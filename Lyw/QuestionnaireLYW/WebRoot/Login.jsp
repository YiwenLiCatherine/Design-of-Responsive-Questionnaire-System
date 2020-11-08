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
    String name = request.getParameter("name");
    String password = request.getParameter("password");
     String driverName = "com.mysql.jdbc.Driver"; 
    //加载JDBC驱动
    String dbURL = "jdbc:mysql://localhost:3306/test"; 
    //连接服务器和数据库
    String userName = "root"; //默认用户名
    String userPwd = "123"; //密码
       Class.forName(driverName);
       Connection Conn = DriverManager.getConnection(dbURL, userName, userPwd);
       try{
       String sql="select * from user where name=? and password=? and state='2'";
       PreparedStatement pstmt=Conn.prepareStatement(sql);
       pstmt.setString(1,name);
       pstmt.setString(2, password);
       pstmt.executeUpdate();
       }catch(Exception e)
            {
                e.printStackTrace();
            }
            
        out.print("登录成功！转向问卷页面！");
       response.sendRedirect("question.jsp");
       %>
</body>
</html>