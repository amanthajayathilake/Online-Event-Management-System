<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/CSS/navigationBar.css" rel="stylesheet"/>
<link href="assets/CSS/footer.css" rel="stylesheet"/>
<link href="assets/CSS/VendorDetails.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
	<title>Vendor Package Details</title>
	
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
		<h1 style="font-size:40px; color:#591c30;  font-family: Luminari, fantasy; margin-top: 50px;" ><b>PACKAGE DETAILS</b></h1>
</div>
<br>

<c:forEach var="ven" items="${venDetails}">
	<c:set var="name" value="${ven.vendorpackage}"/>
	<c:set var="email" value="${ven.email}"/>
	<c:set var="phone" value="${ven.phone}"/>
	<c:set var="venue" value="${ven.venue}"/>
	<c:set var="buffet" value="${ven.buffet}"/>
	<c:set var="maxguests" value="${ven.maxGuests}"/>
	<c:set var="ent" value="${ven.entertainment}"/>
	<c:set var="photo" value="${ven.photography}"/>
	<c:set var="deco" value="${ven.decorations}"/>
	<c:set var="invite" value="${ven.invitations}"/>
	<c:set var="cost" value="${ven.costPerPerson}"/>
	
	
	
<div class="bg">
		<div class="box">
			<img style = "height: 200px; width: 300px; postion: center; margin-top: -35px; margin-left: 360px;" src = "https://images.pexels.com/photos/3585806/pexels-photo-3585806.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
  			<br><br><br><br><br><br><br><br><br>
  			<div class="font-effect-fire">
			<h2 style = "color: #800000; opacity:0.9; text-align: center; font-family: Trirong,serif; font-size: 30px; margin-top: -200px;">${ven.vendorpackage} PACKAGE</h2>
			</div>
			<h1 style = "color:white;  font-size: 20px; width: 600px; text-align: center; margin-left: 210px;"><b>OUR EXCLUSIVE WEDDING PACKAGE</b></h1><br>
			<h2 style = "color:white;  font-size: 18px; text-align: center;  font-family: Arial, Helvetica, sans-serif; font-weight: none;">Offering the best wedding packages in Sri Lanka, our hotel provides unparalleled services making your dream day hassle free. 
			Romantically decorated overnight stay for the bridal couple with a bubbly breakfast in bed or an International breakfast buffet. Your wedding is a chance to craft moments that will last you a life time and we want those memories to be truly memorable. 
			<br><br>YOUR WEDDING PACKAGE INCLUDES:
			</h2><br>
			<h2 style = "color:white;  font-size: 20px; text-align: center;">
			<ul>
			<li><b>Venue: </b>${ven.venue}</li>
			<li><b>Buffet (Non Vegetarian/ Vegetarian): </b>${ven.buffet}</li>
			<li><b>Maximum Guest Count: </b>${ven.maxGuests}</li>
			<li><b>Entertainment: </b>${ven.entertainment}</li>
			<li><b>Photography: </b>${ven.photography}</li>
			<li><b>Background Decorations: </b>${ven.decorations}</li>
			<li><b>Invitation Designing: </b>${ven.invitations}</li>
			<li><b>Cost Per Guest: </b>${ven.costPerPerson}</li>
			</ul>
			</h2><br><br>
			<h2 style = "color:white;  font-size: 18px; text-align: center;  font-family: Arial, Helvetica, sans-serif; font-weight: none;">FOR FURTHER DETAILS CONTACT: 
			</h2><br>			
			<h2 style = "color:white;  font-size: 20px; text-align: center;">
			<ul>
			<li><b>Email Address: </b>${ven.email}</li>
			<li><b>Phone Number: </b>${ven.phone}</li>
			</ul>
			</h2><br><br>
		</div>
	</div>
	
	</c:forEach>
	
	
<div class="bg">
		<div class="box1">
			<h2 style = "color: white; opacity:0.9; text-align: center; font-family: Trirong,serif; font-size: 24px; margin-top: -40px;">FILL IN THE FORM TO BOOK THE PACKAGE</h2>
			<br>
			<form action="addMessage" method="POST">
		 	<input class = "inpbox" type="text" placeholder="Your Name" name="Name" required>
			<select class = "inpbox" placeholder = "Selected Package Name" name="packagenm" required>
			
			
<c:forEach var="ven" items="${venDetails}">
	<c:set var="name" value="${ven.vendorpackage}"/>
	<c:set var="email" value="${ven.email}"/>
	<c:set var="phone" value="${ven.phone}"/>
	<c:set var="venue" value="${ven.venue}"/>
	<c:set var="buffet" value="${ven.buffet}"/>
	<c:set var="maxguests" value="${ven.maxGuests}"/>
	<c:set var="ent" value="${ven.entertainment}"/>
	<c:set var="photo" value="${ven.photography}"/>
	<c:set var="deco" value="${ven.decorations}"/>
	<c:set var="invite" value="${ven.invitations}"/>
	<c:set var="cost" value="${ven.costPerPerson}"/>
	

			<option disabled hidden selected>Selected Package Name</option>
      		<option>${ven.vendorpackage}</option>
      		</c:forEach>

      		</select>
		    <input class = "inpbox" type="text" placeholder="Your Contact Number" name="contact" pattern = "[0-9]{10}" title = "Phone Number must have 10 digits" required>
		    <input class = "inpbox" type="text" placeholder="Your Email" name="email" pattern = "[a-zA-Z0-9._%+-]+@[a-z0-9]+\.[a-z]{2,3}" title = "The email address should have a prefix, @ symbol and a domain" required>
		    <input class = "inpbox" type="text" placeholder="Date of Event (DD-MM-YYYY)" name="Bdate" required>

		    <br><br>
			<input class = "inpbox" style = "width: 998px; height: 30px" type="text" placeholder="Add any special requests or notes" name="special">
		<br><br>
		<button style = "width: 200px; padding: 5px; font-weight: bold; font-size: 16px; margin-left: 400px;" class="btn" type="submit" name="submit" value="addMessage">CONFIRM BOOKING</button>
	</form>
		</div>
	</div>
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
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
	