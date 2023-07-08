<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authority LogIn</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<script language="javascript" type="text/javascript"> </script>     
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
    crossorigin="anonymous">
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: black;;
}
.style2 {font-size: 25px}
.style3 {font-family: "Times New Roman", Times, serif}
.style4 {color: #FFFFFF}
.style6 {font-size: 14px}
-->
</style>
</head>
<body style="background-image:linear-gradient(to right,rgb(30, 17, 117),rgb(28, 182, 213))"> 
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System<br />
        </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="owner_login.jsp"><span>Clients</span></a></li>
          <li><a href="user_login.jsp"><span>SC User</span></a></li>
          <li><a href="cs_login.jsp"><span>Cloud Server</span>(IPFS)</a></li>
          <li class="active"><a href="au_login.jsp"><span>Authority</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div id="carouselExampleIndicators" class="carousel slide" style="padding:15mm">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
              aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
              aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
              aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="images/ekyc2.jpg" class="d-block w-100" alt="... ">
            </div>
            <div class="carousel-item">
              <img src="images/ekyc5.jpg" class="d-block w-100" alt="... ">
            </div>
            <div class="carousel-item">
              <img src="images/ekyc3.jpg" class="d-block w-100" alt="... ">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
          <div class="clr"></div>
      </div>
       <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">  Authority Log In</h2>
		  
		  <form name="s" action="au_authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
            <p>&nbsp;</p>
            <div align="center">
    <table border="0" width="57%" height="165">
      <tr>
        <td height="25" colspan="2"><img src="images/ALogin.jpg" width="275" height="107" /></td>
        </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#FF0000"><span class="style3 style4 style6"><strong> Name </strong></span></td>
        <td width="52%" height="25"><input type="text"  name="userid" size="25" /></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#FF0000"><span class="style4 style3 style6"><strong> Pasword</strong></span></td>
        <td width="52%" height="25"><input type="password"  name="pass" size="25" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2"><p align="center">
            <input type="submit"  value="Login" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </p></td>
      </tr>
    </table>
    
    </div>
</form>
		  
		  
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="owner_login.jsp"><span>Clients</span></a></li>
            <li><a href="user_login.jsp"><span>SC User</span></a></li>
            <li><a href="cs_login.jsp"><span>Cloud Server</span>(IPFS)</a></li>
            <li><a href="au_login.jsp"><span>Authority</span></a></li>
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
