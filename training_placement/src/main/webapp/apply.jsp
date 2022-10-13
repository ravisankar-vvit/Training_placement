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
String s1,s2,s3,s4,sql;
s1=request.getParameter("uname");
s2=request.getParameter("uid");
s3=request.getParameter("cid");
s4=request.getParameter("cname");
//out.println(s1+s2+s3+s4);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    s.executeUpdate("insert into stucom values('"+s2+"','"+s1+"','"+s3+"','"+s4+"')");
    //out.println("rows updated"+n);
    session.setAttribute("msg","sucessfully applied");
    response.sendRedirect("ucompanies.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>