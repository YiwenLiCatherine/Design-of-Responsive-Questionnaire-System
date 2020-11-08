<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head style="background: url(src/flower.jpg)">
    <base href="<%=basePath%>">

    <title>Questionnaire</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">-->
	<script type="text/javascript">
	function add() {
    var tr = getElementsByTagName('tr');
    var cid = tr[tr.length-1].getAttribute('cid');
    cid = parseInt(cid) + 1;
    name = "abc" + cid;
	};
	</script>

  </head>
	<body style="background: url(src/flower.jpg)"s>
	<br><br><br><br><br>

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
         rs=sql.executeQuery("SELECT * FROM question");
         out.print("<center>");
         out.print("<div width:100% height:100% >");
         out.print("<form action='submit.jsp'>");
         out.print("&nbsp&nbsp&nbsp"+"Question No."+"&nbsp&nbsp&nbsp");
         out.print("&nbsp&nbsp&nbsp"+"Question Descriptioin"+"&nbsp&nbsp&nbsp");
         out.print("&nbsp&nbsp&nbsp"+"yes/no"+"&nbsp&nbsp&nbsp");%>
         <br>
         <%while(rs.next()){

            out.print(rs.getInt(1)+"·");
            out.print(rs.getString(2));
              %>
			<td><input type="radio" name="radio<%=rs.getInt(1) %>" value="0">
			<input type="radio" name="radio<%=rs.getInt(1) %>" value="1"></td>
			<br>
            <% 
         }%>
         <input type="submit" value="SUBMIT" class="btn">
         <%
         out.print("</form>");
         out.print("</div>");
         out.print("</center>");
         con.close();
    }catch(SQLException e1){out.print(e1);}
     %>
  </body>
</html>
