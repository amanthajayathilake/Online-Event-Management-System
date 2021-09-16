<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/CSS/UpdateEPAcc.css" rel="stylesheet"/>
	<link href="assets/CSS/UpdateEventPlannerAccnavigationBar.css" rel="stylesheet"/>
	<link href="assets/CSS/footer.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Page</title>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="HomePage.jsp" >Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
   <a href="#contact" class="active">Profile</a>
    
  
  <a href="#about">About</a>
  <a href="LogoutServlet">Logout</a>

  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>


	<%
		String eventPID=request.getParameter("EpID");
		String eventPName=request.getParameter("EpName");
		String eventPNicDr=request.getParameter("EpNicDrive");
		String eventPExp=request.getParameter("EpExp");
		String eventPQual=request.getParameter("EpQual");
		String eventPEmail=request.getParameter("EpEmail");
		String eventPMobile=request.getParameter("EpPhone");
		String eventPUsername=request.getParameter("EpUsername");
		String eventPPassword=request.getParameter("EpPassword");
	
	%>
<br>
<div class="container">
<div class="box">
<br><br><br>
<center>
 <h2 style="color:white; font-size:35px;"><u>Delete Account</u></h2><br>
  <h3 style="color:white; font-size:20px;">Are you sure? You will lost your following details and system will suspend your membership.</h3>
<br>
	<form class="example" action="deleteEventP" method="post">
		<span style="color:white;">Your ID</span><br><input type="text" name="EpID" value="<%= eventPID %>" readonly><br> <br>
		<span style="color:white;">Your Name</span><br><input type="text" name="EpName" value="<%=eventPName %>"readonly><br><br>
		<span style="color:white;">Your NIC/Driving Licence Number</span><br><input type="text" name="EpNicDrive" value="<%= eventPNicDr %>"readonly><br><br>
		<span style="color:white;">Your Experience Level</span><br><input type="text"  value="<%= eventPExp %>"readonly><br><br>
		<span style="color:white;">Your Email</span><br><input type="text" name="EpEmail" value="<%= eventPEmail %>"readonly><br><br>
		<span style="color:white;">Your Contact Number</span><br><input type="text" name="EpPhone" value="<%= eventPMobile %>"readonly><br><br>
		<span style="color:white;">Your Username</span><br><input type="text" name="EpUsername" value="<%=eventPUsername%>"readonly><br><br>
		<span style="color:white;">Your Login Password</span><br><input type="text" name="EpPassword" value="<%= eventPPassword %>"readonly><br><br>
		
		 <h3 style="color:white; font-size:20px;">Thank You for your service. <br>Are you sure tou want to delete your Account?</h3>
		<button class="btn1"type="submit" name="submit">Delete Profile</button>
	</form>
</center></div></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="footer-ditributed" id="fp">
        <div class="footer-left">
            <img src= "D:\JAVAAAA\CustomerLogin\WebContent\assets\images\logo.png" alt="logo">
            <h3>About <span>The Velvet Box</span></h3>
            <p class="footer-links">
                <a href="#">Home</a>
                <a href="#">Blog</a>
                <a href="#">About</a>
                <a href="#">Contact</a>
            </p>
            <p class="footer-company-name">&copy;2021 VelvetBox</p>
        </div>

        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>200-A, Ramakrishna Road</span>Galle road, Colombo</p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>0112 280 280</p>
            </div>

            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="https://mail.google.com/mail/u/0/#inbox">velvetbox@event.com</a></p>
            </div>
        </div>
        
        <div class="footer-right">
            <p class="footer-commpany-about">
                <span>Hello and Welcome</span>
                "Productivity is never an accident. It is always the result of a commitment to excellence, intelligent planning, and focused effort."
                Have you ever dream of an exotic wedding on the ocean?
				We create dream weddings among palm trees and the ocean!
				Let's start planning your wedding...
            </p>
            <div class="footer-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-youtube-play"></i></a>
            </div>
        </div>
    </footer>


<script>
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("myTopnav").style.top = "0";
  } else {
    document.getElementById("myTopnav").style.top = "-50px";
  }
  prevScrollpos = currentScrollPos;
}

</script>
</body>
</html>