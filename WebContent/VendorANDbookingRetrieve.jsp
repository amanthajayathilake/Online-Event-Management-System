<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta charset="ISO-8859-1">
	<link href="assets/CSS/VBRetrieve.css" rel="stylesheet"/>
<link href="assets/CSS/VBnavigationBar.css" rel="stylesheet"/>
<link href="assets/CSS/footer.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 0.5px solid black;
		}
	</style>
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

<br><br>

<c:forEach var="ev" items="${evDetails}">
<c:set var="name" value="${ev.name}"/>
<center>
<h2 style="color:white; background-color:#591c30; opacity:0.7;">Welcome ${ev.name}</h2>
</center>
</c:forEach>

<div class="container">
<div class="box">
<br><br>
<center>
<img src= "https://icon-library.com/images/profile-icon-white/profile-icon-white-22.jpg" alt="logo" style="height:60px; width:60px;">
<h3 style="color:white;" >Profile</h3>

<form class="example" action="searchEP" method = "post">
<span style="color:white;">Enter Your NIC </span>
        <input type="text" placeholder="" name="eventNIC" >
        <br><br><br>
      <p style="color:white; font-size:20px;">or</p><br>
        <span style="color:white;">Enter Your Email </span>
    
        <input type="text" placeholder="" name="eventMAIL"><br><br><br>
<button type="submit"><i class="fa fa-search"></i></button>
</center>
</form>
</div>

<div class="box">
<br><br>
<center>
<img src= "D:\JAVAAAA\CustomerLogin\WebContent\assets\images\hotel.png" alt="logo" style="height:60px; width:60px;">
<h3 style="color:white;" >Vendor Details</h3><br>
<p style="color:white; font-size:16px;" >You can view the Vendor Details. Please refer the details carefully.</p><br><br><br><br>
<form action="venn" method = "post">
<button class="btn btn4">Show Vendor Details</button>
</center>
</form>
	</div>
	
	
	<div class="box">
	<br><br>
	<center>
	<img src= "D:\JAVAAAA\CustomerLogin\WebContent\assets\images\couple.png" alt="logo" style="height:60px; width:60px;">
<h3 style="color:white;" >Customer Booking Details</h3><br>
<p style="color:white; font-size:16px;" >Customer details are viewable. Refer vendor details and Update Customer Booking Status.</p><br><br><br><br>
	<form action="bookR" method = "post">
<button class="btn btn4">Show Booking Details</button>
</center>
</form>
</div>
	</div>
	
	
	
	
	<c:forEach var="v" items="${vDetails}">
	<c:set var="id" value="${ven.id}"/>
	<c:set var="name" value="${v.name}"/>
	<c:set var="pkg" value="${v.vendorpackage}"/>
	<c:set var="email" value="${v.email}"/>
	<c:set var="phone" value="${v.phone}"/>
	<c:set var="buffet" value="${v.buffet}"/>
	<c:set var="maxguests" value="${v.maxGuests}"/>
	<c:set var="ent" value="${v.entertainment}"/>
	<c:set var="photo" value="${v.photography}"/>
	<c:set var="deco" value="${v.decorations}"/>
	<c:set var="invite" value="${v.invitations}"/>
	<c:set var="cost" value="${v.costPerPerson}"/>
	<c:set var="startdate" value="${v.startdate}"/>
	<c:set var="enddate" value="${v.enddate}"/>
	
	<div class="w3-container">
	<center>
  <h2 style="color:white; background-color: #2F4F4F; opacity:0.8; width:100%;">${v.vendorpackage} PACKAGE</h2>
</center>
  <table class="w3-table-all w3-hoverable" style="color:black; opacity:0.8;">
    <thead>
      <tr class="w3-light-grey">
				<th>ID</th>
				<th>Hotel Name</th>
				<th>Package Name</th>
				<th>Email</th>
				<th>Contact</th>
				<th>Buffet Status</th>
				<th>Max Guests</th>
				<th>Entertainment</th>
				<th>Photography</th>
				<th>Decorations</th>
				<th>Invitation Cards</th>
				<th>Cost Per Guest</th>
				<th>Start Date</th>
				<th>End Date</th>
	</tr>
    </thead>
	
	
	<tr style="text-align:center">
		<td>${v.id}</td>
		<td>${v.name}</td>
		<td>${v.vendorpackage}</td>
		<td>${v.email}</td>
		<td>${v.phone}</td>
		<td>${v.buffet}</td>
		<td>${v.maxGuests}</td>
		<td>${v.entertainment}</td>
		<td>${v.photography}</td>
		<td>${v.decorations}</td>
		<td>${v.invitations}</td>
		<td>${v.costPerPerson}</td>
		<td>${v.startdate}</td>
		<td>${v.enddate}</td>
		</tr>
		</table>
		</div>
	
<br><br>

	</c:forEach>
	
	
	

<c:forEach var="book" items="${bookDetails}">
	
	
	<c:set var="bookid" value="${book.id}"/>
	<c:set var="customername" value="${book.cusname}"/>
	<c:set var="mobile" value="${book.phone}"/>
	<c:set var="mail" value="${book.email}"/>
	<c:set var="selectedpackage" value="${book.pkgname}"/>
	<c:set var="bkdate" value="${book.bookDate}"/>
	<c:set var="specialmsg" value="${book.specialnote}"/>
	<c:set var="bkstatus" value="${book.bookstatus}"/>
	
	
	
	
	<div class="w3-container" >
	<center>
  <h2 style="color:white; background-color: #2F4F4F; opacity:0.8; width:100%;">Customer Name : ${book.cusname}</h2>
</center>
  <table class="w3-table-all w3-hoverable" >
    <thead>
      <tr class="w3-light-grey" style="align:center">
		<th>Your ID</th>
		<th>Your Name</th>
		<th>Seleted Package Name</th>
		<th>Your Contact Number</th>
		<th>Your email Address</th>
		<th>Date of Event</th>
		<th>Special Note</th>
		<th>Booking Status</th>
		
	</tr>
    </thead>
	
	<tr style="text-align:center">
		<td>${book.id}</td>
		<td>${book.cusname}</td>
		<td>${book.pkgname}</td>
		<td>${book.phone}</td>
		<td>${book.email}</td>
		<td>${book.bookDate}</td>
		<td>${book.specialnote}</td>
		<td>${book.bookstatus}</td>
		</tr>
		</table>
		</div>
	
	
	<c:url value="UpdateCusBookingStatus.jsp" var="bookUpdate">
		<c:param name="bID" value="${bookid}"/>
		<c:param name="customername" value="${customername}"/>
		<c:param name="pkgwant" value="${selectedpackage}"/>
		<c:param name="contact" value="${mobile}"/>
		<c:param name="Eaddress" value="${mail}"/>
		<c:param name="bookDate" value="${bkdate}"/>
		<c:param name="smessage" value="${specialmsg}"/>
		<c:param name="datestatus" value="${bkstatus}"/>
		
	</c:url>
		
		<center>
		<a href="${bookUpdate}">
	<button class="btn1" name="update"><b>Update Status</b></button>
	</a> </center>
	<br><br><br>
	</c:forEach>
	
	
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
	