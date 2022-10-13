<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/templates/campus_life/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<style>
h1
{
color:red;
}
body
{
background-color:lightblue;
color:#555;
font-family:Arial,Helvetica,sans-serif;
font-size:16px;
line-height:1.6em;
margin:0;
}
container
{
width:80%;
margin:auto;
overflow:hidden;
}
#navbar
{
background-color:orange;
color:#fff;
}
#navbar ul
{
padding:0;
list-style:none;
}
#navbar li
{
display:inline;
}
#navbar a
{
color:white;
text-decoration:none;
font-size:18px;
padding-right:40px;
} 
iframe {
  background-color: lightblue;
  width:1150px;
  padding: 10px;
  height: 800px; /* Should be removed. Only for demonstration */
}
  

  
  
</style>
</head>
<body >
<%
String s1=(String)session.getAttribute("sid");
session.setAttribute("sid",s1);
//session.setAttribute("msg","suecssfully logout");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("pragma","no-cache");
response.setDateHeader("Expires",0);
if(session.getAttribute("sid")==null)
{
	response.sendRedirect("home_page.html");
}
%>
<h1 align="center">vvit online training and placement cell</h1>
<nav id="navbar">
<div class="container">
<ul>
<li><a href="companies.html" target="frame">companies</a></li>
<li><a href="internship.html" target="frame">internship</a></li>
<li><a href="courses.html" target="frame">courses</a></li>
<li><a href="announcement.jsp" target="frame">announcement</a></li>
<li><a href="wprofile.jsp" target="frame">placement profile</a>
<li><a href="about.jsp" target="frame">about</a>

<li style="float:right"><a href="profile.jsp" class="active" target="frame1">profile</a></li>
</ul>
</div>
</nav>
<iframe src="graph.png" name="frame" frameborder="0">

</iframe>

<iframe src="favicon.ico" style="float:right; width:320px; height:300px" name="frame1" frameborder="0"></iframe>
</body>
</html>