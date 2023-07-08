		  
		  <%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {color: #FFFF00}
-->
</style>
<title>u_View_All_eKYC_Details</title><body>

          <p>
		  
		  <table width="1113" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td width="47" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Id</strong></div></td>
    <td width="72" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>User Name </strong></div></td>
    <td width="51" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Email</strong></div></td>
	<td width="59" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Mobile</strong></div></td>
	<td width="78" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Address</strong></div></td>
    <td width="62" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Date of Birth</strong></div></td>
	
	
	<td width="42" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Adhaar or PAN Number</strong></div></td>
	<td width="66" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Adhaar or PAN Address</strong></div></td>
	<td width="63" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Adhaar or PAN Image</strong></div></td>
	<td width="57" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Date and Time</strong></div></td>
	<td width="79" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Uploader Name</strong></div></td>
	<td width="32" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> SK</strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Permission to IPFS </strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Location </strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Location Hash Code </strong></div></td>
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17,s18;
		int i = 0, j = 0, k = 0;
        

		try {

			String query = "select * from ekyc_details ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				s6 = rs.getString(6);
				s7 = rs.getString(7);
				s8 = rs.getString(8);
				s9 = rs.getString(9); //image
				s10 = rs.getString(10);
				s11 = rs.getString(11);
				s12 = rs.getString(12);
				s13 = rs.getString(13); // Permission
				s14 = rs.getString(14);
				s15 = rs.getString(15);
				
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   String decrys3 = new String(Base64.decode(s3.getBytes()));
						   String decrys4 = new String(Base64.decode(s4.getBytes()));
						   String decrys5 = new String(Base64.decode(s5.getBytes()));
						   String decrys6 = new String(Base64.decode(s6.getBytes()));
						   String decrys7 = new String(Base64.decode(s7.getBytes()));
						   String decrys8 = new String(Base64.decode(s8.getBytes()));
						  

	%>

	<tr>
		<td height="52">
		<div align="center" class="style5 style8"><strong><%=i%></strong></div>		</td>
		<td height="52">
		<div align="center" class="style5 style8"><strong><%=s2%></strong></div>		</td>
		<td height="52">
		<div align="center" class="style5 style8"><strong><%=decrys3%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=decrys4%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=decrys5%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=decrys6%></strong></div>		</td>
		<td height="52">
		<div align="center" class="style5 style8"><strong><%=decrys7%></strong></div>		</td>
		<td height="52">
		<div align="center" class="style5 style8"><strong><%=decrys8%></strong></div>		</td>
		
		<td height="52">
		<div align="center" class="style5 style8"><strong><input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:300px; height:300px;" /></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=s10%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=s11%></strong></div>		</td>
		
		<td>
		<div align="center" class="style5 style8"><strong><%=s12%></strong></div>		</td>
		<%
		if(s13.equalsIgnoreCase("No"))
						{
						
						
						%>
            <td  width="111" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style8">
                <p>&nbsp;</p>
            <a href="u_Permit_eKYC.jsp?id=<%=i%>&uname=<%=s2%>&ano=<%=s7%>">Verify and Permit</a> </div></td>
            <%
						}
						else
						{
						%>
            <td width="63" height="0"  valign="baseline"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <%out.println(s13);%>
            </div></td>
            <%
						}
						%>
		
		<td>
		<div align="center" class="style5 style8"><strong><%=s14%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=s15%></strong></div>		</td>
	</tr>

	<%
		}
		
		
					
		
		

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
