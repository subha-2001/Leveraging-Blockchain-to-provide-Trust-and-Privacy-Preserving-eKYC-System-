
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FFFFFF}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						
						
						
						String str1 = " select distinct(hcode) from ekyc_details ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from ekyc_details  where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(14);
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
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
	<td width="63" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Adhaaror PAN Image</strong></div></td>
	<td width="57" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Date and Time</strong></div></td>
	<td width="79" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong>Uploader Name</strong></div></td>
	<td width="32" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> SK</strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Permission to IPFS </strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Location </strong></div></td>
	<td width="98" bgcolor="#FF0000"><div align="center" class="style6 style3 style4 style2"><strong> Location Hash Code </strong></div></td>
  </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1"> eKYC User BlockChain Location--->::</span> <%=s111%><br>
			    <span class="style1">eKYC User Location Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
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
	      </div>  
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
		
            <td width="63" height="0"  valign="baseline"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <%out.println(s13);%>
            </div></td>
            
		<td>
		<div align="center" class="style5 style8"><strong><%=s14%></strong></div>		</td>
		<td>
		<div align="center" class="style5 style8"><strong><%=s15%></strong></div>		</td>
	</tr>

 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        