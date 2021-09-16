<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="assets/CSS/UpdateCusBooking.css" rel="stylesheet"/>
	<link href="assets/CSS/UpdateStatusnavigationBar.css" rel="stylesheet"/>
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
		String id=request.getParameter("bID");
		String name=request.getParameter("customername");
		String pkgName=request.getParameter("pkgwant");
		String phone=request.getParameter("contact");
		String email=request.getParameter("Eaddress");
		String bookedDate=request.getParameter("bookDate");
		String note=request.getParameter("smessage");
		String updateDate=request.getParameter("datestatus");
	
	%>


<div class="container">
<div class="box">

<br><br><br>
<center>
 <h2 style="color:white; font-size:35px;">Check Booking Status</h2>
<br>
	<form class="example" action="updateStts" method="post">
	
	<span style="color:white;">Customer ID </span><br>
		<input type="text" name="bID" value="<%= id %>" readonly><br><br>
	
		<span style="color:white;">Customer Name </span><br>
		<input type="text" name="customername" value="<%= name %>"readonly><br><br>
		
		<span style="color:white;">Package Customer Want </span><br>
		<input type="text" name="pkgwant" value="<%= pkgName %>"readonly><br><br>
		
		<span style="color:white;">Customer Contact Number </span><br>
		<input type="text" name="contact" value="<%= phone %>"readonly><br><br>
		
	
		<input type="hidden" name="Eaddress" value="<%= email %>"readonly>
		<input type="hidden" name="bookDate" value="<%= bookedDate %>"readonly>
		<input type="hidden" name="smessage" value="<%= note %>"readonly>
		
		
		<span style="font-size:30px; color:white;"><u><b>Booking Status</b></u></span><br>
          <span style="color:white;">Payed and Pending</span>&nbsp; &nbsp;&nbsp;&nbsp;<input type ="radio" name="datestatus" value="Payed and Pending"><br>
          <span style="color:white;">Payed and Accepted</span>&nbsp;&nbsp;&nbsp;<input type ="radio" name="datestatus" value="Payed and Accepted"><br>
          <span style="color:white;">Cancelled</span>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type ="radio" name="datestatus" value="Cancelled"><br>
          <span style="color:white;">Refunded</span>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="radio" name="datestatus" value="Refunded"><br>
          <span style="color:white;">Payment not Success</span>&nbsp; <input type ="radio" name="datestatus" value="Payment not Success"><br>
		<button class="btn1"type="submit" name="submit">Update Status</button>
		</center>
	</form>
	
</div></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
                Have you ever dreamt of an exotic wedding on the ocean?
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