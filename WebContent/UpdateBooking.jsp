<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="assets/CSS/navigationBar.css" rel="stylesheet"/>
<link href="assets/CSS/footer.css" rel="stylesheet"/>
<link href="assets/CSS/UpdateBooking.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
<title>Update Booking Profile</title>
	
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="#home" class="active">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
   <a href="#contact">Profile</a>
    
  
  <a href="#about">About</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>
<br>
<div>
		<h1 style="font-size:40px; color:#591c30;  font-family: Luminari, fantasy; margin-top: 50px;" ><b>UPDATE BOOKING</b></h1>
</div>
<br>

<div class="bg">
		<div class="box1">
			<img class="bigday" src="https://images.pexels.com/photos/341371/pexels-photo-341371.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" style = "height: 250px; width: 350px; margin-left: 25%; margin-top: -10px;">
			
  			<br><br><br><br><br><br><br>
  			<div class="font-effect-fire">
			<h2 style = "color: #800000; opacity:0.9; text-align: center; font-family: Trirong,serif; font-size: 24px; margin-top: -120px;">EDIT YOUR BOOKING PACKAGE DETAILS</h2>
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
	<form action="updateBooking" method="post">
	<h1 style = "color:white;  font-size: 18px; margin-left: 115px; margin-top: 10px;'">
		CUSTOMER ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="bID" value="<%= id %>" readonly disabled><br><br>
		CUSTOMER NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="customername" value="<%= name %>"><br><br>
		DESIRED PACKAGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="pkgwant" value="<%= pkgName %>"><br><br>
		CUSTOMER CONTACT NUMBER : <input class = "inpbox" type="text" name="contact" value="<%= phone %>"><br><br>
		CUSTOMER EMAIL ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="Eaddress" value="<%= email %>"><br><br>
		RESERVATION DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="bookDate" value="<%= bookedDate %>"><br><br>
		SPECIAL NOTE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="smessage" value="<%= note %>" style = "height: 50px;"><br><br>
		BOOKING STATUS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input class = "inpbox" type="text" name="datestatus" value="<%= updateDate %>" readonly disabled><br><br>
		</h1><br>
		<button class="btn"type="submit" name="submit">UPDATE BOOKING PROFILE</button>
	</form>
		</div>
	</div>


	
<footer class="footer-ditributed" id="fp" style = "margin-top: -215px; margin-bottom:0px;">
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