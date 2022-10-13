<%@ page import="java.sql.*,javax.servlet.http.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1
{
color:red;
font-size:1.8em;
}

</style>
</head>
<body>
<h1 align="left" style="color:black">Notice:</h1>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    ResultSet rs=s.executeQuery("select text from announcement order by sno desc limit 1");
    
    while(rs.next())
    {
    	
    	out.println("<h1>"+rs.getString(1)+"</h1>");
       
    }
 
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>