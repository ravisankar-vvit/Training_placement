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
String s0,s1,s2,s3,s4,s5,sql;
s0=request.getParameter("id");
s1=request.getParameter("name");
s2=request.getParameter("amount");
s3=request.getParameter("dur");
s4=request.getParameter("type");
s5=request.getParameter("date");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    sql="insert into courses values('"+s0+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
    int n=s.executeUpdate(sql);
    out.println("rows updated"+n);
    session.setAttribute("msg","sucessfully added");
    response.sendRedirect("acourses.jsp");
   }
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>