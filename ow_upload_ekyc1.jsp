<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na111=document.s.pic.value;
if(na111=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}
}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: black;
}
.style2 {font-size: 25px}
.style3 {color: #FFFF00}
.style4 {color: #FFFF00; font-weight: bold; }
.style5 {
	color: #FFFFFF;
	font-weight: bold;
}
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
          <h2 align="center"><strong> Upload eKYC Details !!! </strong></h2>
          <p align="center">&nbsp;</p>
		  <%
		 	 String pname=request.getParameter("pname");
      		String email=request.getParameter("email");
      		String mobile=request.getParameter("mobile");
      		String address=request.getParameter("address");
			String dob=request.getParameter("dob");
      		String ano=request.getParameter("ano");
      		String aaddress=request.getParameter("aaddress");
			String aloc=request.getParameter("aloc");
		  
		  %>
		  
		  
		  
		  
		  <form name="s" action="ow_upload_ekyc2.jsp" method="post"  enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">   
          <table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
            
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">User Name :- </div></td>
              <td><input name="pname" type="text" id="tt2" value="<%=pname%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Email :- </div></td>
              <td><input name="email" type="text" id="tt2" value="<%=email%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Mobile No. :- </div></td>
              <td><input name="mobile" type="text" id="tt2" value="<%=mobile%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Address :- </div></td>
              <td><input name="address" type="text" id="tt2" value="<%=address%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Date Of Birth :- </div></td>
              <td><input name="dob" type="text" id="tt2" value="<%=dob%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Aadhaar or PAN Number  :- </div></td>
              <td><input name="ano" type="text" id="tt2" value="<%=ano%>" size="50"/></td>
            </tr>
			
			<tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style4">Address In Aadhaar Card:- </div></td>
              <td><input name="aaddress" type="text" id="tt2" value="<%=aaddress%>" size="50"/></td>
            </tr>
			
			<tr>
		<td bgcolor="#FF0000"><div align="center" class="style3 style9"><strong><span class="style8 style10 style11">Select Aadhaar or PAN Image :- </span></strong></div></td>
		<td><input type="file" id="pic" name="pic" class="text" /></td>
	</tr>
			
            <tr>
              <td bgcolor="#FF0000"><div align="center" class="style5 style3">Aadhaar or PAN Location </div></td>
              <td><input name="aloc" type="text" id="aloc" value="<%=aloc%>" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#00FFFF"><div align="center"><span class="style10"><span class="style11"><span class="style12"></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Encrypt and Upload" /></td>
            </tr>
          </table>
          </form>
          
		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="ow_upload_ekyc.jsp" class="style14">Back</a></p>
		  		      
		  <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Client</span> Menu</h2>
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
