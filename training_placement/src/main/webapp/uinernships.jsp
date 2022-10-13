<%@ page import="java.sql.*,javax.servlet.http.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table
{
border:solid 3px;
}
td,th,b
{
font-size:20px;
}
a
{
color:red;
}
input[type=submit] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  background-color:green;
  color:yellow;
}
</style>
</head>
<body align="center">
<h1>list of internships</h1>
<h2 style="color:red"><%@ include file="message.jsp"
%></h2>
<table cellpadding="10" cellspacing="10" align="center">
<tr>
<th>id</th>
<th>company</th>
<th>cgpa(required)</th>
<th>stipend(K)</th>
<th>topic</th>
<th>last date</th>
<th>location</th>
<th>elgible</th>
<th>duration</th>
</tr>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    ResultSet rs=s.executeQuery("select * from internships");
    while(rs.next())
    {
    	
    	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>");
       
    }
 
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
<br><br>
<form action="applyi.jsp">
<b>company id:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cid"><br><br>
<b>company name:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cname"><br><br>
<b>topic:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course"><br><br>
<b>your id:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uid"><br><br>
<b>your name:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uname">
<br><br><br>
<input type="submit" value="apply">
</form>
</body>
</html>