<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
<h1>new companies</h1>
<h2 style="color:red"><%@ include file="message.jsp"
%></h2>
<table cellpadding="10" cellspacing="10" align="center" height="500px" width="700px">
<form action="addc.jsp">
<tr>
<td>id</td>
<td><input type="number" name="id"></td>
</tr>
<tr>
<td>name</td>
<td><input type="text" name="text"></td>
</tr>
<tr>
<td>cgpa(required)</td>
<td><input type="text" name="cgpa"></td>
</tr>
<tr>
<td>no of rounds(excluding face-face interview)</td>
<td><input type="number" name="no"></td>
</tr>
<tr>
<td>min-salary(LPA)</td>
<td><input type="text" name="min"></td>
</tr>
<tr>
<td>max-salary(LPA)</td>
<td><input type="text" name="max"></td>
</tr>
<tr>
<td>interview-type</td>
<td><input type="text" name="type"></td>
</tr>
<tr>
<td>last date to apply</td>
<td><input type="date" name="date"></td>
</tr>
<tr>
<td>who can apply(branches)</td>
<td><input type="text" name="apply"></td>
</tr>
<tr>
<td>location</td>
<td><input type="text" name="loc"></td>
</tr>
<tr>
<td><input type="submit" text="add"></td>
<td><input type="reset" text="cancel"></td>
</tr>
</form>
</table>
</body>
</html>