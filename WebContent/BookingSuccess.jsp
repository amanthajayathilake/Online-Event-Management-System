<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/CSS/navigationBar.css" rel="stylesheet"/>
<link href="assets/CSS/footer.css" rel="stylesheet"/>
<link href="assets/CSS/BookingSuccess.css" rel="stylesheet"/><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
	<title>Booking Details</title>
	
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
		<h1 style="font-size:40px; color:#591c30;  font-family: Luminari, fantasy; margin-top: 50px;" ><b>BOOKING DETAILS</b></h1>
</div>
<br>
	
<div class="bg">
		<div class="box">
  			<div class="font-effect-fire">
			<h2 style = "color: #800000; opacity:0.9; text-align: center; font-family: Trirong,serif; font-size: 24px; margin-top: -40px;">THANK YOU!!!</h2><br>
			</div>
			<h1 style = "color:white;  font-size: 18px; margin-left: 25px; text-align: center;"><b>Your reservation has been received. For more information, you can view the booking details for updates and await for confirmation from the event planner. We look forward to working with you!!!</b></h1><br>
			<h1 style = "color:white;  font-size: 18px; margin-left: 25px; text-align: center;"><b>VIEW BOOKING DETAILS</b></h1><br>
			<form action="history" method="POST" >
      <label>
        <input type="text" placeholder="ENTER YOUR NAME" name="customername" style = "padding: 7px; margin-left: 168px; width: 300px;">
      </label>
    
   
      <br><br>
   <center><button class="btn" type="submit" name="submit" value="history">VIEW BOOKING</button></center>
	</form>
		</div>
	</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
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