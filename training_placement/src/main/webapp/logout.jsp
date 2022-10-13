<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
a
{
  padding: 12px 20px;
  display: inline-block;
  color:green;
  text-decoration:none;
}
h1
{
color:red;
}
</style>
</head>
<body align="center" background="training.jpg">
<%
session.invalidate();
//session.setAttribute("sid",null);
//session.setAttribute("msg","suecssfully logout");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires",0);
response.sendRedirect("ulogin.jsp");
%>
<h1>sucessfully logout</h1>
<h1><a href="alogin.jsp">Go to->login page</a></h1>
</body>
</html>