<!DOCTYPE html>
<html>
	
<head>
	<title> Home :: w3layouts</title>
		<meta charset="utf-8">
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
</head>
<body style="bgclor:black">
	
				 <!-----start-main---->
				<div class="login-form">
						<h1>Sign In</h1>
						<h2><a href="signup.jsp">Create Account</a></h2>
				<form method="post" action="thankyou.jsp">
					<li>
						<input type="text" name="login" class="text" value="User Name or Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" ><a href="#" class=" icon user"></a>
					</li>
					<li>
						<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"><a href="#" class=" icon lock"></a>
					</li>
					
					 <div class ="forgot">
						<h3><a href="#">Forgot Password?</a></h3>
						<input type="submit" onclick="myFunction()" value="Sign In" > <a href="#" class=" icon arrow"></a>                                                                                                                                                                                                                                 </h4>
					</div>
				</form>
			</div>
			<!--//End-login-form-->
		
</body>
</html>
