<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Clients</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #07160f;
}
.style2 {font-size: 25px}
.style4 {font-size: 20px}
.style5 {font-size: 15px}
.style7 {font-size: 14px}
.style8 {color: #FFFFFF}
.style9 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body style="background-image:linear-gradient(to right,rgb(30, 17, 117),rgb(28, 182, 213))">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System  </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="owner_login.jsp"><span>Client</span></a></li>
          <li><a href="user_login.jsp"><span>Smart contracts User</span></a></li>
          <li><a href="cs_login.jsp"><span>Cloud Server</span>(IPFS)</a></li>
          <li class="active"><a href="au_login.jsp"><span>Authority</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style9"> View All Clients and Authorise</h2>
          <p align="center">&nbsp;</p>
          <table width="737" border="1" align="center"  cellpadding="0" cellspacing="0">
          <tr>
            <td  width="25" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>ID</strong></div></td>
			<td  width="121" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Client  Image</strong></div></td>
            <td  width="116" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Client Name </strong></div></td>
            <td  width="118" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong> Financial Institute </strong></div></td>
            <td  width="157" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Role</strong></div></td>
            
            <td  width="157" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Status</strong></div></td>
            <td  width="157" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Send Verification Message</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from owner"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);//img
								s7=rs.getString(7);
							
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            <td width="121" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="ow_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
            </a> </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <a href="au_profiles.jsp?user=<%=s2%>"><%out.println(s2);%></a>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s4);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s5);%>
                  <p>&nbsp; </p>
                </div></td>
                
            <%
						if(s7.equalsIgnoreCase("waiting"))
						{
						
						%>
            <td  width="157" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style5">
                <p>&nbsp;</p>
                <p align="right">
                  <a href="ow_Status.jsp?id=<%=i%>"  class="style4">Approve</a></p>
       
            
               
            <%
						}
						else
						{
						%>
            <td width="27" height="0"  valign="baseline"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s7);%>
            </div></td>
            <%
						}
						%>
          </tr>
          <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          <tr>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            
          </tr>
        </table>
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
		  <p align="center"><a href="au_main.jsp" class="style14">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Authority</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="au_main.jsp"><span> Authority Main</span></a></li>
            <li><a href="au_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
