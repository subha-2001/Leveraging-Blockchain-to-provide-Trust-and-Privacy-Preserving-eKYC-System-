<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> All Transactions</title>
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
	color:black;
}
.style2 {font-size: 25px}
.style5 {font-size: 15px}
.style6 {color: #FFFFFF}
.style7 {font-size: 14px}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System  <br />
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
          <h2 align="center"> View All Transactions !!! </h2>
          <p align="center">&nbsp;</p>
		  
<table width="694" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td width="79" bgcolor="#FF0000"><div align="center" class="style7 style6 style1"><strong>Id</strong></div></td>
	<td width="155" bgcolor="#FF0000"><div align="center" class="style7 style6 style1"><strong>Smart contracts / eKYC User </strong></div></td>
    <td width="175" bgcolor="#FF0000"><div align="center" class="style1 style6 style7 style9">
      <p>Aadhaaror PAN Number </p>
      </div></td>
    
    <td width="141" bgcolor="#FF0000"><div align="center" class="style7 style6 style1"><strong>Task</strong></div></td>
    <td width="82" bgcolor="#FF0000"><div align="center" class="style7 style6 style1"><strong>Date</strong></div></td>
  </tr>		  
		
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

<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
		int i = 0, j = 0, k = 0;

		try {

			String query = "select * from transaction ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				//s6 = rs.getString(6);  
		  
		%>  <tr>
		<td height="29">
		<div align="center" class="style8 style5"><%=i%></div>		</td>
		<td height="29">
		<div align="center" class="style8 style5"><%=s2%></div>		</td>
		<td>
		<div align="center" class="style8 style5"><%=s3%></div>		</td>
		<td>
		<div align="center" class="style8 style5"><%=s4%></div>		</td>
		<td>
		<div align="center" class="style8 style5"><%=s5%></div>		</td>
		
		</tr>

	<%
		}

			connection.close();
		}

		catch (Exception e)
		 {
			out.println(e.getMessage());
		}
	%>
</table>		  
		  
		  
		  
		  
		  
		  
		  
		  
          <p align="center"><a href="s_main.jsp" class="style14">Back</a></p>
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Server</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="s_main.jsp"><span>Server Main</span></a></li>
            <li><a href="cs_login.jsp"><span>Log Out</span></a></li>
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
