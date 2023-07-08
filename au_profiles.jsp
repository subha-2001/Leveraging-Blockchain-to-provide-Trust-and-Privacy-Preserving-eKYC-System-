<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
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
	color: black;
}
.style2 {font-size: 25px}
.style5 {font-size: 15px}
.style6 {font-size: 18px}
.style7 {color: #666666}
.style8 {color: #FFFFFF}
-->
</style>
</head>
<body style="background-image:linear-gradient(to right,rgb(30, 17, 117),rgb(28, 182, 213))">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System   
<br />
        </a><a href="index.html" class="style1 style2">System Using Blockchain</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li></li>
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
          <h2 align="center">User Profile </h2>
          <p>&nbsp;</p>
		  
		  <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=request.getParameter("user");
						
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
								s2=rs.getString(8);
								s3=rs.getString(9);
								s4=rs.getString(10);
								s5=rs.getString(11);
								s6=rs.getString(12);
								s7=rs.getString(13);
								
								
								
								
								
					%>
            <tr>
              <td width="230" rowspan="7" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="ow_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
              </a></div></td>
            </tr>
            <tr>
              <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Email</strong></div></td>
              <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style7" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Mobile</strong></div></td>
              <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style7" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <tr>
              <td  width="145" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Address</strong></div></td>
              <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style7" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
            </tr>
            <tr>
              <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Date of Birth </strong></div                        ></td>
              <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7">
                  <div align="left" class="style23 style9 style10 style6" style="margin-left:20px;">
                    <%out.println(s5);%>
                  </div>
              </div></td>
            </tr>
			<tr>
              <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Gender</strong></div                        ></td>
              <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7">
                  <div align="left" class="style23 style9 style10 style6" style="margin-left:20px;">
                    <%out.println(s6);%>
                  </div>
              </div></td>
            </tr>
			<tr>
              <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style9 style5 style8" style="margin-left:20px;"><strong>Pincode</strong></div                        ></td>
              <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7">
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
         

		  
		  <p>&nbsp;</p>
          <p align="right"><a href="au_all_owners.jsp" class="style4">Back</a></p>
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
