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
<h1>list of companies</h1>
<table cellpadding="10" cellspacing="10" align="center">
<tr>
<th>id</th>
<th>company</th>
<th>cgpa(required)</th>
<th>rounds</th>
<th>min-salary(LPA)</th>
<th>max-salary(LPA)</th>
<th>type</th>
<th>applyBy</th>
<th>elgible</th>
<th>location</th>
</tr>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    ResultSet rs=s.executeQuery("select * from companies");
    while(rs.next())
    {
    	
    	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td></tr>");
       
    }
 
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
<br><br>
<form action="remove.jsp">
<b>company id:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id">
<br><br><br>
<input type="submit" value="remove">
</form>
</body>
</html>