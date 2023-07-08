<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
    crossorigin="anonymous"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Owner Name");
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

var na9=document.s.dept.value;
if(na9=="--Select--")

{
alert("Please Select Your Department");
document.s.dept.focus();
return false;
}

var na99=document.s.spec.value;
if(na99=="--Select--")

{
alert("Please Select Your Specialist");
document.s.spec.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.address.value;
if(na5=="")

{
alert("Please Enter Your address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="--Select--")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("Please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	color: #141414;
}
.style2 {font-size: 25px}
.style3 {
	color: #385a70;
	font-weight: bold;
}
-->
</style>
</head>
<body style="background-color: #504191; ">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 style="padding-top:20mm; font-size: 20mm ;"><a href="index.html" class="style1 style2">Leveraging Blockchain to provide  Trust and Privacy-Preserving eKYC System  
</a></h1>
</div>
      <div class="menu_nav">
        <br>
        <br>
        <ul>
          <li><a href="index.html" style="font-size: larger;"><span>Home Page</span></a></li>
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
              <img src="images/ekyc2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images/ekyc5.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images/ekyc3.jpg" class="d-block w-100" alt="...">
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
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
          <p align="center"><img src="images/Register.jpg" width="343" height="65" /></p>
          <form name="s" action="ow_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
		  
                  <label for="name">
                  <span class="style3"><strong>Client  Name (required)<br />
                  </strong></span></label>
                  <p class="style3"><strong>
                  <input id="name" name="userid" class="text" />
                  </strong></p>
				  
                  <span class="style3">
                  <label for="password">
				  Password (required)<br />
                  </label>
                  </span>
                  <p class="style3"><strong>
                  <input type="password" id="password" name="pass" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="gender"> Financial Institute Name (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="dept" class="text" style="width:170px;">
                    <option>--Select--</option>
                       <option>SBI</option>
                       <option>ICICI</option>
                       <option>AXIS</option>
					   <option>HDFC</option>
					   <option>Other</option>
                  </select>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="gender"> Specialist   (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="spec" class="text" style="width:170px;">
                    <option>--Select--</option>
                       <option>Cashier</option>
                       <option>Manager</option>
					   <option>Team Leader</option>
					   <option>Other</option>
                  </select>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="email">Email Address (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="email" name="email" class="text" />
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="mobile" name="mobile" class="text" />
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="address">Your Address<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <textarea name="address" cols="50" id="address"></textarea>
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="dob" name="dob" class="text" />
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="gender">Select Gender (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="gender" class="text">
                    <option>-Select-</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="pincode">Enter Pincode (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="pincode" name="pincode" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="pic">Select Profile Picture (required)</label>
                  </strong></span>
                  <span class="style3">
                  <label for="pic"></label>
                  </span>
                  <strong>
                  <label for="pic"></label>
                  </strong>
                  <label for="pic"><br />
            </label>
                  <p>
                    <input type="file" id="pic" name="pic" class="text" />
                  </p>
				  
                  <p>
                    <input name="submit" type="submit" value="REGISTER" />
                  </p>
                  <p align="right"><a href="owner_login.jsp">Back</a></p>
          </form>
		  
		  
          <p>&nbsp;</p>
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="owner_login.jsp"><span>Client</span></a></li>
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
