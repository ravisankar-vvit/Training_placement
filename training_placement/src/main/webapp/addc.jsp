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
String s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sql;
s0=request.getParameter("id");
s1=request.getParameter("text");
s2=request.getParameter("cgpa");
s3=request.getParameter("no");
s4=request.getParameter("min");
s5=request.getParameter("max");
s6=request.getParameter("type");
s7=request.getParameter("date");
s8=request.getParameter("apply");
s9=request.getParameter("loc");
//out.println(s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+s8);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    sql="insert into companies values('"+s0+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')";
    int n=s.executeUpdate(sql);
    out.println("rows updated"+n);
    session.setAttribute("msg","sucessfully added");
    response.sendRedirect("acompanies.jsp");
   }
catch(Exception e)
{
	e.printStackTrace();
}
 %>
</body>
</html>