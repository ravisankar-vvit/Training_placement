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
String name,id,pwd,no,mail,dob,year,percent,sql;
name=request.getParameter("name");
id=request.getParameter("id");
pwd=request.getParameter("pwd");
no=request.getParameter("phone");
mail=request.getParameter("email");
dob=request.getParameter("dob");
year=request.getParameter("year");
percent=request.getParameter("percent");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement();
    sql="insert into users values('"+id+"','"+name+"','"+pwd+"','"+no+"','"+mail+"','"+dob+"','"+year+"','"+percent+"')";
    int n=s.executeUpdate(sql);
   // out.println("sucessfully registered");
    session.setAttribute("msg","sucessfully registered");
    response.sendRedirect("ulogin.jsp");
    }
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>