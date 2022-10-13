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
<h1>add courses</h1>
<h2 style="color:red"><%@ include file="message.jsp"
%></h2>
<table cellpadding="10" cellspacing="10" align="center" height="500px" width="700px">
<form action="addcs.jsp">
<tr>
<td>id</td>
<td><input type="number" name="id"></td>
</tr>
<tr>
<td>name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>amount(in RS)</td>
<td><input type="number" name="amount"></td>
</tr>
<tr>
<td>duration(months)</td>
<td><input type="number" name="dur"></td>
</tr>
<tr>
<td>type</td>
<td><input type="text" name="type"></td>
</tr>
<tr>
<td>start date</td>
<td><input type="date" name="date"></td>
</tr>
<td><input type="submit" value="add"></td>
<td><input type="reset" value="cancel"></td>
</tr>
</form>
</table>
</body>
</html>