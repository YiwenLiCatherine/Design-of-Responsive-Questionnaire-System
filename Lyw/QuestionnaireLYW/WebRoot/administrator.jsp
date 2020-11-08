<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <base href="<%=basePath%>">
    
    <title>Question Management</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
	<body style="background: url(src/flower.jpg)">
	<br><br><br><br><br><br><br><br><br><br><br><br><br>

    <%
    Connection con;
    Statement sql;
    ResultSet rs;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    }catch(Exception e){out.print(e);}
    try{

  	     String url="jdbc:mysql://localhost:3306/test";
   	     String name="root";
         String pwd="123";
         con=DriverManager.getConnection(url,name,pwd);
         sql=con.createStatement();
         rs=sql.executeQuery("SELECT question.questionid, question.question, SUM(answer.state) ,COUNT(state) FROM question left JOIN answer ON question.questionid=answer.questionid GROUP BY(answer.questionid)");
         out.print("<tr width=900px>");
         out.print("<center>");
         out.print("<div width:100% height:100% >");
         out.print("<table border=0>");
         out.print("<th>"+"QuesNo. &nbsp"+"</th>");
         out.print("<th>"+"Question description  "+"</th>");
         out.print("<th>"+"People"+"</th>");
 		 out.print("<th>"+" Operation"+"</th>");

         out.print("</tr>");

         while(rs.next()){
         	out.print("<tr>");
            out.print("<td>"+rs.getInt(1)+"</td>");
            out.print("<td>"+rs.getString(2)+"</td>");
		    out.print("<td>"+rs.getString(3)+"</td>");
              %>
              <td><a href="delete.jsp?questionid=<%=rs.getInt(1)%>" >Delete</a></td>

            <% out.print("</tr>");
         }
         out.print("</table>");
         out.print("</div>");
         out.print("</center>");
         con.close();
    }catch(SQLException e1){out.print(e1);}
     %>
     <center><a href="addquestion.jsp" src></a></center>
  </body>
</html>