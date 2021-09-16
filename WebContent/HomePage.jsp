<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/CSS/HomePage.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">

<title>Insert title here</title>
</head>
<body>

	
	<div class="logo-image">
		<div class="img" >
			<img src = "D:\JAVAAAA\CustomerLogin\WebContent\assets\images\logo.png" style="height:60px; width:60px;">
		</div>
		<div class="logo-text">
			<div class="font-effect-fire">
				<h1 style="font-size:70px; color:#591c30;  font-family: Tangerine, serif;" ><b>The Velvet Box</b></h1>
			</div>
		</div>
	</div>


	<div class="home-image">
		<div class="home-text">
				<div class="font-effect-outline">
					<h1 style="font-size:35px; font-family: Sofia, sans-serif;">Customer</h1>
				</div>
			<p style="font-size:14px; color:#d9d9d9;" class="w3-container w3-cursive">Your preferred Event & Wedding Planner in Sri Lanka, specializing in organizing stylish, exclusive and exceptionally original events fashioned out of your very own special moments! If you are looking for an exquisite -Destination Wedding- look no further as we intricately orchestrate those magical moments that will resonate your dream wedding.</p>
			<a href="CustomerLoginSignUp.jsp">
			<button style="font-size:13px; ">Get Started as a Customer</button>
			</a>
			
		</div>
	</div>

	<div class="home-image1">
		<div class="home-text1">
			<div class="font-effect-outline">
					<h1 style="font-size:35px; font-family: Sofia, sans-serif;">Vendor</h1>
				</div>
	
			<p style="font-size:14px; color:#d9d9d9;" class="w3-container w3-cursive">The choice of qualified vendors to secure the best prices for products and services. Obligated service in growing out of fundamental ethical considerations with maximum standards.</p>
			
				<button style="font-size:13px; ">Get Started as a Vendor</button>
			
		</div>
	</div>

	<div class="home-image2">
		<div class="home-text2">
			<div class="font-effect-outline">
					<h1 style="font-size:35px; font-family: Sofia, sans-serif;">Event Planner</h1>
				</div>
			<p style="font-size:14px; color:#d9d9d9;" class="w3-container w3-cursive">Do you want to be a successful and enthusiastic Event Planner to produce events from conception through to completion. Charged with creating experiences and bringing visions to life, an event planner is adept at juggling many tasks.
				<br> - Outline the scope of the event
				<br> - Scout and inspect event venues
				<br> - Negotiate and manage vendor contracts</p>
			<a href="EventPlannerLoginSignUp.jsp">
				<button style="font-size:13px; " >Get Started as an Event Planner</button>
			</a>
		</div>
		</div>


	
<div class="footer-cont1">
		<div class="img" >	
<br>
<div class="font-effect-fire">
<h1 style="color:white; text-align: center;position: absolute;left: 43%;">Photo Gallery</h1><br><br><br><br>
</div>
<div class="slideshow-container">

<div class="mySlides fade" >
  <img src="https://images.pexels.com/photos/758898/pexels-photo-758898.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" style="width:100%">
 
</div>

<div class="mySlides fade">
  <img src="https://images.pexels.com/photos/759668/pexels-photo-759668.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" style="width:100%">

</div>

<div class="mySlides fade">
 <img src="https://images.pexels.com/photos/1247756/pexels-photo-1247756.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" style="width:100%">

</div>

<div class="mySlides fade" >
  <img src="https://images.pexels.com/photos/3009325/pexels-photo-3009325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" style="width:100%">
 
</div>

<div class="mySlides fade">
  <img src="https://images.pexels.com/photos/1779492/pexels-photo-1779492.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" style="width:100%">
 
</div>

<div class="mySlides fade">
 <img src="https://images.pexels.com/photos/3444499/pexels-photo-3444499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" style="width:100%">
 
</div>
</div>
<br>

<div style="text-align:center " >
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

	
			
		</div>
		
	</div>
	
	
	
	
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1000); // Change image every 2 seconds
}
</script>


</body>
</html>