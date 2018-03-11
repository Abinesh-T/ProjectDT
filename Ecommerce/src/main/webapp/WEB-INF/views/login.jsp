<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGINPAGE</title>
<!-- To Access the Bootstrap link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="./resources/css/loginpage.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
  .backgroundclr
  { 
    background-color: #1a0000;
  }
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
/* Set a style for all buttons */
button {
    background-color: gray;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
}
/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: gray;
}
/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
img.avatar {
    width: 40%;
    border-radius: 50%;
}
.container {
    padding: 16px;
}
span.psw {
    float: right;
    padding-top: 16px;
}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}
/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

    <!-- Loginpage coding finshed here -->
    <center>
    <div class="container" style="padding:50px 0">
	<div class="row"><h4 style="font-family: Engravers MT;font-family: monospace;color: gray;"></h4></div>
	<!-- Main Form -->
	<div class="l">
	<c:url var="loginUrl" value="/j_spring_security_check" />
	
		<form id="login-form" name="formLogin" action="${loginUrl}"  method="post" class="text-left">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="lg_username" class="sr-only">Username</label>
						<input type="text" class="form-control" id="lg_username" name="j_username" placeholder="username" required>
					</div>
					<div class="form-group">
						<label for="lg_password" class="sr-only">Password</label>
						<input type="password" class="form-control" id="lg_password" name="j_password" placeholder="password" required>
					</div>

				</div>
				<!-- <button type="submit" class="login-button">Login</button> -->
			<center>	<input type="submit" name="submit"  class="btn btn-primary"/></center>
			
			</div>
			 <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		</form>
		</div>
		</div>

</center>
  <!-- <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">New User <a href="#">Register</a></span>
  </div> -->
    <jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>