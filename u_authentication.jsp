<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
		    
		    int count=0;
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			application.setAttribute("us",username);
			
			String sql="SELECT * FROM user where name='"+username+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where name='"+username+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									String s1=rs1.getString(4);
									String s2=rs1.getString(5);
									
									
									application.setAttribute("dept",s1);
									application.setAttribute("prof",s2);
									
									response.sendRedirect("u_main.jsp");
								}
								else
								{
										%>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<br/>
									<p class="style1">You are not Authorized, Please wait!! </p>
									<br/><br/><a href="user_login.jsp">Back</a>
									<%
								 }
					
					}
			else
			{
				out.print("Invalid Login Details");
				 %><br/><br/><a href="user_login.jsp">Back</a><%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>