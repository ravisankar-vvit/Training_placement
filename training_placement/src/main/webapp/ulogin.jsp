<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
background-image:url("favicon.ico");
opacity:1;
background-size:500px,500px;
background-repeat:no-repeat;
background-position:left up;
}
</style>
</head>
<body bgcolor="lightblue" align="center">
<h1 align="center"style="font-size:300%; color:orange">User login</h1>
<h2 style="color:green"><%@ include file="message.jsp"
%></h2>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires",0);
%>
<table align="center" cellpadding="15" cellspacing="20" bgcolor="lightyellow">
<form action="Validate1.jsp">
<tr>
<td>userid</td>
<td><input type="text" name="auid"></td>
</tr>
<tr>
<td>password</td>
<td><input type="password" name="apwd"></td>
</tr>
<tr>
<td><input type="submit" value="login"></td>
<td><input type="reset" value="cancel"></td>
</tr>
</form>
</table>
</body>
</html>