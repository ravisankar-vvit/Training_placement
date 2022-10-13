<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
border:solid red 3px;
}
td
{
font-size:20px;
}
</style>
</head>
<body align="center">
<h1>add internships</h1>
<h2 style="color:red"><%@ include file="message.jsp"
%></h2>
<table cellpadding="10" cellspacing="10" align="center" height="500px" width="700px">
<form action="addi.jsp">
<tr>
<td>id</td>
<td><input type="number" name="id"></td>
</tr>
<tr>
<td>name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>cgpa(required)</td>
<td><input type="text" name="cgpa"></td>
</tr>
<tr>
<td>stipend(K)</td>
<td><input type="number" name="sti"></td>
</tr>
<tr>
<td>topic</td>
<td><input type="text" name="topic"></td>
</tr>
<tr>
<td>last date</td>
<td><input type="date" name="date"></td>
</tr>
<tr>
<td>location</td>
<td><input type="text" name="loc"></td>
</tr>
<tr>
<td>who can apply</td>
<td><input type="text" name="apply"></td>
</tr>
<tr>
<td>time(months)</td>
<td><input type="number" name="time"></td>
</tr>
<tr>
<td><input type="submit" value="add"></td>
<td><input type="reset" value="cancel"></td>
</tr>
</form>
</table>
</body>
</html>