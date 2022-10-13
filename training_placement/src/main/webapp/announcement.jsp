<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
<h2 style="color:red"><%@ include file="message.jsp"
%></h2>
<h1>new announcement:</h1><br><br>
<form action="addact.jsp">
<textarea name="act" rows="8" cols="100" placeholder="enter any announcements(upto 500 words)"></textarea><br><br>
<input type="submit" value="submit">
</form>
</body>
</html>