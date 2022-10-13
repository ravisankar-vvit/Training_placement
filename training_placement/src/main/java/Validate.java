
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class Validate extends HttpServlet{
	public Validate()
	{
		super();
	}

	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		PrintWriter out=res.getWriter();
		res.setContentType("html/text");
		String s1,s2;
		boolean check=true;
		s1=req.getParameter("auid");
		s2=req.getParameter("apwd");
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_placement","root","");
	        Statement s=con.createStatement(); 
	        ResultSet rs=s.executeQuery("select id,password from admins");
	        while(rs.next())
	         {
	    	    if(s1==rs.getString(0)&&s2==rs.getString(1))
	    	    {
	    		 out.println("sucessfully login");
	    		 check=false;
	    		 break;
	    	    }
	         }
	        if(check==false)
	         {
	    	   out.println("entered wrong details");
	         }
		    }
		 catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	}
}
}
