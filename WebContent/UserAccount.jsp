<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="assets/CSS/EPuserAccountNav.css" rel="stylesheet"/>
	<link href="assets/CSS/EPAccount.css" rel="stylesheet"/>
	<link href="assets/CSS/footer.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px  white;
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



	<c:forEach var="ev" items="${evDetails}">
	
	<c:set var="id" value="${ev.id}"/>
	<c:set var="name" value="${ev.name}"/>
	<c:set var="nicdriving" value="${ev.niclic}"/>
	<c:set var="explevel" value="${ev.exp}"/>
	<c:set var="edqualy" value="${ev.qualfy}"/>
	<c:set var="email" value="${ev.epmail}"/>
	<c:set var="phone" value="${ev.phone}"/>
	<c:set var="username" value="${ev.userName}"/>
	<c:set var="password" value="${ev.password}"/>
	
	<div class="container">
<div class="box">

<br><br><br>
<center>
 <h2 style="color:white; font-size:35px;"><u>Profile Details</u></h2>
<br>
	<table>
	<tr>
		<td>Your ID</td>
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.id}</td>
		</tr>
	<tr>
		<td>Your Name
	<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.name}</td>
	</tr>
	<tr>
		<td>NIC or Driving LIC Number
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.niclic}</td>
	</tr>
	<tr>
		<td>Experience Level
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.exp}</td>
	</tr>
	<tr>
		<td>Qualifications
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.qualfy}</td>
</tr>
	<tr>
		<td>Your Email
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.epmail}</td>
		</tr>
	<tr>
		<td>Your Contact
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.phone}</td>
		</tr>
	<tr>
		<td>Your Username
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.userName}</td>
		</tr>
	<tr>
		<td>Your Password
		<td>&nbsp;:&nbsp;&nbsp;&nbsp;${ev.password}</td>
		</tr>
		</table>
		
	

	
	
</center>
</div>
</div>
</c:forEach>

	
	
	
	<c:url value="UpdateEventPlannerAcc.jsp" var="eventplannerdetUpdate">
		<c:param name="EpID" value="${id}"/>
		<c:param name="EpName" value="${name}"/>
		<c:param name="EpNicDrive" value="${nicdriving}"/>
		<c:param name="EpExp" value="${explevel}"/>
		<c:param name="EpQual" value="${edqualy}"/>
		<c:param name="EpEmail" value="${email}"/>
		<c:param name="EpPhone" value="${phone}"/>
		<c:param name="EpUsername" value="${username}"/>
		<c:param name="EpPassword" value="${password}"/>
		
	</c:url>
		<a href="${eventplannerdetUpdate}">
	<button style="margin-top:460px;"class="btn1" name="updateEventPlanner">Update My Data</button>
	</a>
	
	
	<c:url value="DeleteEventPlannerAcc.jsp" var="eventplannerdetDelete">
		<c:param name="EpID" value="${id}"/>
		<c:param name="EpName" value="${name}"/>
		<c:param name="EpNicDrive" value="${nicdriving}"/>
		<c:param name="EpExp" value="${explevel}"/>
		<c:param name="EpQual" value="${edqualy}"/>
		<c:param name="EpEmail" value="${email}"/>
		<c:param name="EpPhone" value="${phone}"/>
		<c:param name="EpUsername" value="${username}"/>
		<c:param name="EpPassword" value="${password}"/>
		
	</c:url>
	<a href="${eventplannerdetDelete}">
	<button class="btn1" name="Delete My Data">Delete My Data</button>
	</a>
	
	
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
	