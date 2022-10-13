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
String s1,s2;
boolean check=true;
s1=request.getParameter("auid");
s2=request.getParameter("apwd");
 try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println(s1);
	out.println(s2);
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    ResultSet rs=s.executeQuery("select id,pwd from users");
    while(rs.next()&&check)
    {
    	if((s1.equalsIgnoreCase(rs.getString(1)))&&(s2.equalsIgnoreCase(rs.getString(2))))
    	{
    		out.println("sucessfull login");
    		session.setAttribute("sid",rs.getString(1));
    		response.sendRedirect("users.jsp");
    		check=false;
    	}
    }
    if(check)
    {
    session.setAttribute("msg","wrong details");  
    response.sendRedirect("ulogin.jsp");
    //response.sendRedirect("alogin.html");
    }
 }
 catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
}
%>
</body>
</html>