<%@ page import="java.sql.*,javax.servlet.http.*" language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
String s1,s2;
boolean check=true;
s1=request.getParameter("auid");
s2=request.getParameter("apwd");
 try {
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
    Statement s=con.createStatement(); 
    ResultSet rs=s.executeQuery("select id,pwd from admins");
    while(rs.next()&&check)
    {
    	if((s1.equalsIgnoreCase(rs.getString(1)))&&(s2.equalsIgnoreCase(rs.getString(2))))
    	{
    		out.println("sucessfull login");
    		session.setAttribute("sid",s1);  
    		check=false;
    		response.sendRedirect("admin.jsp");
    		
    	}
    }
    if(check)
    {
    session.setAttribute("msg","wrong details");  
    response.sendRedirect("alogin.jsp");
    }
 }
 catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
}
%>
</body>
</html>