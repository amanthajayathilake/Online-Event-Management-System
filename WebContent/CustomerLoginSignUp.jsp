<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
<link href="assets/CSS/CustomerLoginSignup.css" rel="stylesheet"/>
<link href="assets/JSS/LoginSignup.js" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Customer Signup/Login</title>

<script>
    function myFunction() {
       alert("You have Successfully registered as a Customer");
     }
    
   
</script>

</head>
<body>




	<div class="cont">
    <div class="form sign-in">
      <h2>Customer Sign In</h2>
      <form action="cuslog" method="POST">
      <label>
        <span>Username</span>
        <input type="text" placeholder="" name="username" oninvalid="alert('Username field is empty. Please enter your username!');" required>
      </label>
      <label>
        <span>Password</span>
        <input type="password" placeholder="" name="password" oninvalid="alert('Password field is empty. Please enter your password!');" required>
      </label>
   
      <br>
      <button class="btn1"type="submit" name="submit" value="cuslog">Login</button>
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
          <p>Sign up as a Customer and discover great amount of new opportunities!</p><br>
          <p>
        
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
        <h2>Customer Registration</h2>
        <form action="cusinsert" method="POST">
        	<label>
          		<span>Name</span>
          			<input type ="text" name="name" oninvalid="alert('Field is empty. Enter details to continue!');" required>
       		</label>
        
        	<label>
          		<span>NIC Number</span>
          			<input type ="text" name="nic" oninvalid="alert('Field is empty. Enter details to continue!');" required>
        	</label>
        
        
        	<label for="cars">Select Your Gender:
  				<select name="gen" style="font-size:15px;" oninvalid="alert('Field is empty. Enter details to continue!');" required>
    				<option value="Male">Male</option>
   					<option value="Female">Female</option>
  				</select>
  			</label>
        
        	<label>
          		<span>Email</span>
          			<input type ="text" name="email" oninvalid="alert('Field is empty. Enter details to continue!');" required>
        	</label>
        
        	<label>
          		<span>Mobile Number</span>
          			<input type ="text" name="mobile" oninvalid="alert('Field is empty. Enter details to continue!');" required>
        	</label>
        
        	<label>
          		<span>Username</span>
          		<input type ="text" name="uid" oninvalid="alert('Field is empty. Enter details to continue!');" required>
        	</label>
        	
        	
        	<label>
          		<span>Password</span> 
          		<input type ="password" name="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" oninvalid="alert('Field is empty. Enter details to continue!');" required>
          	
        	</label>
       <br>
        	<button class="btn2"type ="submit" name="submit" onclick="myFunction()" value="Register as an Event Planner">Register as an Event Planner</button>
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