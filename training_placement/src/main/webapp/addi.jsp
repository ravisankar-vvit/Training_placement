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
String s0,s1,s2,s3,s4,s5,s6,s7,s8,sql;
s0=request.getParameter("id");
s1=request.getParameter("name");
s2=request.getParameter("cgpa");
s3=request.getParameter("sti");
s4=request.getParameter("topic");
s5=request.getParameter("date");
s6=request.getParameter("loc");
s7=request.getParameter("apply");
s8=request.getParameter("time");
//out.println(s0+s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+s8);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    sql="insert into internships values('"+s0+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')";
    int n=s.executeUpdate(sql);
    out.println("rows updated"+n);
    session.setAttribute("msg","sucessfully added");
    response.sendRedirect("ainternships.jsp");
   }
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>