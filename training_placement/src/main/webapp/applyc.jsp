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
String s1,s2,s3,s4;
s1=request.getParameter("sid");
s2=request.getParameter("sname");
s3=request.getParameter("cid");
s4=request.getParameter("cname");
//out.println(s1+s2+s3+s4);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    s.executeUpdate("insert into stucourses values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
    //out.println("rows updated"+n);
    session.setAttribute("msg","sucessfully applied");
    response.sendRedirect("ucourses.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>