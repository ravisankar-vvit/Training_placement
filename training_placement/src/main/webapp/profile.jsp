<%@ page import="java.sql.*,javax.servlet.http.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table
{
border:solid 3px;
}
td,th,b,a
{
font-size:20px;
}
a
{
width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  background-color:green;
  color:yellow;
  text-decoration:none;
}
</style>
<body>
<table cellpadding="5" cellspacing="5">
<%
String s1,s2,s3,s4,s5,sql;
String s6=(String)session.getAttribute("sid");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    //ResultSet rs=s.executeQuery("select * from admins where id="+s6);
    PreparedStatement st = con.prepareStatement("SELECT * FROM admins WHERE id=?");
    st.setString(1,s6);
    ResultSet rs = st.executeQuery();
    while(rs.next())
    {
    	
    	out.println("<tr><td>name:</td><td>"+rs.getString(1)+"</td></tr>");
    	out.println("<tr><td>id:</td><td>"+rs.getString(2)+"</td></tr>");
    	out.println("<tr><td>email:</td><td>"+rs.getString(5)+"</td></tr>");
    	out.println("<tr><td>phone:</td><td>"+rs.getString(4)+"</td></tr>");
    	out.println("<tr><td>dob:</td><td>"+rs.getString(6)+"</td></tr>");
    	out.println("<tr><td><a href=logout.jsp target=_top>signout</a></td></tr>");
    }
   }
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</body>
</html>