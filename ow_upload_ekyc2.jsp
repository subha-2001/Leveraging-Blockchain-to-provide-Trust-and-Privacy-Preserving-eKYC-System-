<title>Registration authentication</title>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>


<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>


<%
		String user=(String)application.getAttribute("ow");


		            ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null,aname=null,cont=null,mac=null,cld=null;
					String a=null,b=null,d=null,image=null,aaddress=null,ano=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String tname=null;     
					String desc=null;
					int rank=0;
					String uname=null;     
        			String pass=null;
					String email=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String status="Waiting";
					String gender=null;
					String aloc=null;
					
					FileInputStream fs=null;
					File file1 = null;	
					
					
try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements())
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("pname"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("ano"))
							{
								ano=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aaddress"))
							{
								aaddress=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aloc"))
							{
								aloc=multi.getParameter(paramname);
							}
							
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						String enc="";
						
		
						Date now = new Date();

			            String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
         
		 
		 
    	    KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		    Cipher encoder = Cipher.getInstance("RSA"); 
		    KeyPair kp = kg.generateKeyPair(); 
		    PublicKey pubKey = kp.getPublic(); 
		 
		    // RSA produces 1024 bits Key
		 
		    byte[] pub = pubKey.getEncoded();
		    String pk = pub.toString();
			
			    String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String encaddr = new String(Base64.encode(addr.getBytes()));
				String encdob = new String(Base64.encode(dob.getBytes()));
				String encemail = new String(Base64.encode(email.getBytes()));
				String encmno = new String(Base64.encode(mno.getBytes()));
				String encano = new String(Base64.encode(ano.getBytes()));
				String encaaddress = new String(Base64.encode(aaddress.getBytes()));
				
				
				
			
			Statement st = connection.createStatement();
			

            String query="select * from ekyc_details where uname='"+uname+"'";
            ResultSet rs=st.executeQuery(query);
			
			if(rs.next()==true)
			{
              out.println("Username Already Exist");
			  
			  %>
		
		  </p>
		  <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
          </style>
		  <br />
		<p>  <a href="ow_upload_ekyc.jsp">BACK</a></p>

<%
			  			
			}
			 else if(rs.next()!=true)
             {
			 
			 String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(aloc));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
		
			 
			 
			 			
		   String rk="0",rk2="0",permit="No";
						
		  PreparedStatement ps=connection.prepareStatement("insert into ekyc_details(uname,uaddress,dob,email,mobile,ano,aaddress,image,dt,owname,sk,permit,aloc,hcode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,encaddr);
						ps.setString(3,encdob);	
						ps.setString(4,encemail);
						ps.setString(5,encmno);
						ps.setString(6,encano);
						ps.setString(7,encaaddress);
						ps.setBinaryStream(8, (InputStream)fs, (int)(file1.length()));
						ps.setString(9,dt);
						ps.setString(10,user);	
						ps.setString(11,pk);
						ps.setString(12,permit);
						ps.setString(13,aloc);
						ps.setString(14,h1);
						
							
						int x=ps.executeUpdate();
						
						
						
						
						if(x>0)
						{
							%>
							  <p><h1 class="style8 style1">eKYC Details Uploaded Successfully !!!</h1>
							
					         <%
							 
							 

					
					String task="Uploaded";
					String strQuery222 = "insert into transaction(user,ano,task,dt) values('"+user+"','"+ano+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);
							 
							
						}
%>
		
		  </p><br />
		<p>  <a href="ow_upload_ekyc.jsp">BACK</a></p>

<%
		  	}
		  		connection.close();
				
	}
		  	catch (Exception e) 
			{
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	}
		  %> 