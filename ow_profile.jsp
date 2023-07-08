<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Profile</title>
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
	color: #0f0f0f;
}
.style2 {font-size: 25px}
.style3 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System  
      </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
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
          <h2 align="center"> My Profile!!! </h2>
          <p align="center">&nbsp;</p>
          <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String )application.getAttribute("ow");
						
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from owner where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								//s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);
								
								
								
								
								
					%>
            <tr>
              <td width="230" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="ow_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
              </a></div></td>
            </tr>
            <tr>
              <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style8 style9 style5 style3" style="margin-left:20px;"><strong>User Name </strong></div></td>
              <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style8 style9 style5 style3" style="margin-left:20px;"><strong>Bank</strong></div></td>
              <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
            </tr>

            <tr>
              <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style8 style9 style5 style3" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
              <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style23 style9 style10 style6" style="margin-left:20px;">
                    <%out.println(s7);%>
                  </div>
              </div></td>
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
          </table>
          <p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Client</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ow_main.jsp"><span>Client Main</span></a></li>
            <li><a href="owner_login.jsp"><span>Log Out</span></a></li>
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
