<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1
{
background-image:url("favicon.ico");
opacity:1;
background-size:50px,100px;
background-repeat:no-repeat;
background-position:left up;
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
<h1 align="center">vvit online training and placement cell</h1>

<nav id="navbar">
<div class="container">
<ul>
<li><a href="ucompanies.jsp" target="frame">companies</a></li>
<li><a href="uinernships.jsp" target="frame">internship</a></li>
<li><a href="ucourses.jsp" target="frame">courses</a></li>
<li><a href="myapp.html" target="frame">my applications</a></li>
<li><a href="uannouncement.jsp" target="frame">announcement</a></li>
<li><a href="wprofile.jsp" target="frame">placement profile</a>
<li><a href="about.jsp" target="frame">about</a>
<li style="float:right"><a class="active" href="uprofile.jsp" target="frame1">profile</a></li>
</ul>
</div>
</nav>
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
<iframe src="uannouncement.jsp" name="frame" frameborder="0">
<%
%>
</iframe>
<iframe id="if2" src="favicon.ico" allowfullscreen="false" style="float:right; width:320px; height:500px" name="frame1" frameborder="0"></iframe>
</body>
</html>