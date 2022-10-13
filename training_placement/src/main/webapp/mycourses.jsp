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
<table cellpadding="10" cellspacing="10" align="center">
<tr>
<th>course-id</th>
<th>course</th>
</tr>
<%
String id=(String)session.getAttribute("sid");
//out.println(id);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    //ResultSet rs=s.executeQuery("select * from stucourses where sid="+id);
    PreparedStatement st = con.prepareStatement("SELECT * FROM stucourses WHERE uid=?");
    st.setString(1,id);
    ResultSet rs = st.executeQuery();
    while(rs.next())
    {
    	
    	out.println("<tr><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><tr>");
       
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