<%@ page import="java.sql.*,javax.servlet.http.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("act");
out.println(s1);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    s.executeUpdate("insert into announcement(text) values('"+s1+"')");
    session.setAttribute("msg","sucessfully added");
    response.sendRedirect("announcement.jsp");
    }
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>