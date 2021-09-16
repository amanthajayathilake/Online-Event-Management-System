<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
<link href="assets/CSS/LoginSignup.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Event Planner Signup/Login</title>

</head>
<body>




	<div class="cont">
    <div class="form sign-in">
      <h2>Event-Planner Sign In</h2>
      <form action="log" method="POST">
      <label>
        <span>Username</span>
        <input type="text" placeholder="" name="username">
      </label>
      <label>
        <span>Password</span>
        <input type="password" placeholder="" name="password">
      </label>
      
      <br>
      <button class="btn1"type="submit" name="submit" value="log">Login</button>
      <button class="btn1" type="reset" value="Reset">Reset</button>
      </form>
      <a href="HomePage.jsp">
				<button class="btn1" type="button" name="button" value="">Back to Home</button>
				</a>
    

      <div class="social-media">
      <p class="follow" style="color:white;"><b>|Follow Us on|</b></p>
        <ul>
          <li><img src="https://img.utdstc.com/icon/fe0/ab6/fe0ab67fa0de2b2681602db5708a076f50dd21106e0c2d38b9661875a37e235e:200"></li>
          <li><img src="https://1000logos.net/wp-content/uploads/2017/06/Logo-Twitter.jpg"></li>
          <li><img src="https://neilpatel.com/wp-content/uploads/2017/05/LinkedIn.jpg"></li>
          <li><img src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-instagram-new-square1-512.png"></li>
        </ul>
      </div>
    </div>

    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up as a Event Planner and discover great amount of new opportunities!</p><br>
          <p>
          So, the wedding planner is a specialist who plans, prepares and creates your celebration -from- and -to- or in other words - works on your wedding from idea to implementation. 
			
          
          </p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up" >Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
        <h2>Event-Planner Sign Up</h2>
        <form action="insert" method="POST">
        
        	<label>
          <span>Name</span>
          <input type ="text" name="name" required>
        </label>
        
        <label>
          <span>NIC/Driving Licence Number</span>
          <input type ="text" name="nicdr" pattern = "[0-9}{12}" title = "Your MIC must have 12 digits" required>
        </label>
        <br>
        
        <label>
        <span ><u>Experience Level</u></span><br><br>
    		<select style="font-size:15px" name="experiences" required>
    			<option >Please select Your Experience Level...</option>
    			<option value="Intern">Intern</option>
      			<option value="Less than 1 year">Less than 1 year</option>
      			<option value="1-2 years">1-2 years</option>
      			<option value="2-4 years">2-4 years</option>
      			<option value="5+ years">5+ years</option>
    		</select>
    </label>
    <br>
    <label>
    <span ><u>Qualification Status</u></span><br><br>
    	Undergraduate<input type="radio" name="Qual" value="Undergraduate"><br>
    	Graduate<input type="radio" name="Qual" value="Graduate"><br>
    	Other<input type="radio" name="Qual" value="Other"><br>
    </label>
  
    
        <label>
          <span>Email</span>
          <input type ="text" name="email" pattern = "[a-zA-Z0-9._%+-]+@[a-z0-9]+\.[a-z]{2,3}" title = "The email address should have a prefix, @ symbol and a domain" required>
        </label>
        
        <label>
          <span>Mobile Number</span>
          <input type ="text" name="mobile" pattern = "[0-9]{10}" title = "Phone Number must have 10 digits" required>
        </label>
        
        <label>
          <span>Username</span>
          <input type ="text" name="uid" required>
        </label>
        
        <label>
          <span>Password</span>
          <input type ="password" name="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must be at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
        </label>
       <br>
        <button class="btn2"type ="submit" name="submit" value="Register as an Event Planner">Register as an Event Planner</button>
        </form>
      </div>
    </div>
  </div>
	
	<script>
     
	document.querySelector('.img-btn').addEventListener('click', function()
			{
				document.querySelector('.cont').classList.toggle('s-signup')
			}
		);
	</script>

</body>
</html>