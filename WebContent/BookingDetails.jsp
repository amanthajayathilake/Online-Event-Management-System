<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<link href="assets/CSS/navigationBar.css" rel="stylesheet"/>
<link href="assets/CSS/footer.css" rel="stylesheet"/>
<link href="assets/CSS/BookingProfile.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
	<title>Booking Profile</title>
	
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
		<h1 style="font-size:40px; color:#591c30;  font-family: Luminari, fantasy; margin-top: 50px;" ><b>BOOKING PROFILE</b></h1>
</div>
<br>
	
	

	
		
<div class="bg">
		<div class="box">
			<c:forEach var="bk" items="${bkDetails}">
	
	
	<c:set var="bookid" value="${bk.id}"/>
	<c:set var="customername" value="${bk.cusname}"/>
	<c:set var="mobile" value="${bk.phone}"/>
	<c:set var="mail" value="${bk.email}"/>
	<c:set var="selectedpackage" value="${bk.pkgname}"/>
	<c:set var="bkdate" value="${bk.bookDate}"/>
	<c:set var="specialmsg" value="${bk.specialnote}"/>
	<c:set var="bkstatus" value="${bk.bookstatus}"/>
			<img style = "height: 250px; width: 350px; postion: center; margin-top: -35px; margin-left: 335px;" src = "https://images.pexels.com/photos/916340/pexels-photo-916340.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
  			<br><br><br><br><br><br><br><br><br>
  			<div class="font-effect-fire">
  			<br>
			<h2 style = "color: #800000; opacity:0.9; text-align: center; font-family: Trirong,serif; font-size: 30px; margin-top: -200px;">WELCOME ${bk.cusname}</h2>
			</div>
			<h1 style = "color:white;  font-size: 24px; width: 600px; text-align: center; margin-left: 210px; margin-top: -100px;"><b>YOUR BOOKING PROFILE DETAILS</b></h1>
			<h2 style = "color:white;  font-size: 23px; text-align: center;">
			<ul>
			<li><b>Booking ID: </b>${bk.id}</li>
			<li><b>Customer Name: </b>${bk.cusname}</li>
			<li><b>Selected Package Name: </b>${bk.pkgname}</li>
			<li><b>Customer Contact Number: </b>${bk.phone}</li>
			<li><b>Customer Email: </b>${bk.email}</li>
			<li><b>Date Of Event: </b>${bk.bookDate}</li>
			<li><b>Special Notes: </b>${bk.specialnote}</li>
			<li><b>Booking Status: </b>${bk.bookstatus}</li>
			</ul>
			</h2>
		</c:forEach>
	
	<c:url value="UpdateBooking.jsp" var="bookUpdate">
		<c:param name="bID" value="${bookid}"/>
		<c:param name="customername" value="${customername}"/>
		<c:param name="pkgwant" value="${selectedpackage}"/>
		<c:param name="contact" value="${mobile}"/>
		<c:param name="Eaddress" value="${mail}"/>
		<c:param name="bookDate" value="${bkdate}"/>
		<c:param name="smessage" value="${specialmsg}"/>
		<c:param name="datestatus" value="${bkstatus}"/>
		
	</c:url>
	
	<c:url value="DeleteBooking.jsp" var="bookDelete">
		<c:param name="bID" value="${bookid}"/>
		<c:param name="customername" value="${customername}"/>
		<c:param name="pkgwant" value="${selectedpackage}"/>
		<c:param name="contact" value="${mobile}"/>
		<c:param name="Eaddress" value="${mail}"/>
		<c:param name="bookDate" value="${bkdate}"/>
		<c:param name="smessage" value="${specialmsg}"/>
		<c:param name="datestatus" value="${bkstatus}"/>
	</c:url>
	
	<br>
	<a href="${bookUpdate}">
	<button class="btn" name="update" style = "margin-top: 10px; margin-left: 270px;">UPDATE DETAILS</button>
	</a>
	
	<a href="${bookDelete}">
	<button class="btn" name="delete" style = "margin-top: -500px; margin-left: 140px;">CANCEL BOOKING</button>
	</a>
	
		</div>
	</div>
	
	

		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
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