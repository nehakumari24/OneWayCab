<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
    <!-- Bootstrap -->
    
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrapThemeCss" />
	<spring:url value="/resources/css/custom.css" var="custom" />
    <spring:url value="/resources/js/jquery-3.1.1.min.js" var="jqueryJs" />
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${bootstrapThemeCss}" rel="stylesheet" />
	<link href="${custom}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
    <script src="${bootstrapJs}"></script>
</head>
<body style="background-color:#F7DC6F;">
<container>
<div class="row">
	<div class="col-md-10">
	<img src="/OneWayCab/resources/images/logo.png"><b>Pay only for the distance you have travelled</b>
	</div>
	<div class="col-md-2"><br><br><br><br>
	<b>Call Us<br>8346572450</b>
	</div>
	</div>
</container>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="/OneWayCab/chooseCities">Home</a></li>
      <li><a href="/OneWayCab/aboutus">About Us</a></li>
      <li><a href="/OneWayCab/chooseCities">Book Cab</a></li>
      <li><a href="/OneWayCab/contactus">Contact Us</a></li>
      <li><a href="#">Check Booking Status</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="/OneWayCab/admin/login"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a></li>
    </ul>
  </div>
</nav>

<div class="row" style="background-color:#FDFEFE;">
<div class="col-md-6" >
<a href="/OneWayCab/chooseCities"><button type="submit" class="btn btn-success">Back
</button></a>
</div>
<div class="col-md-6" >
</div>
</div>
<div class="row" style="background-color:#FDFEFE;">
<div class="col-md-2" >
 </div>
<div class="col-md-5" >
<form action="/OneWayCab/admin/routeAndFareSuccess" method="POST">
<h2>  Add Route and Fare Details</h2>
  Route and Fare ID:<br>
  <input type="text" name="routeAndFareID" ><br><br>
  Pickup City:<br>
  <input type="text" name="pickupCity" ><br><br>
  Destination City:<br>
  <input type="text" name="destinationCity" ><br><br>
  Swift Fare:<br>
  <input type="text" name="swiftFare" ><br><br>
  Innova Fare:<br>
  <input type="text" name="innovaFare" ><br><br>
  SUV Fare:<br>
  <input type="text" name="suvFare" ><br><br>
  <input type="submit" value="Submit" class="btn btn-success">
  
</form>
</div>

<div class="col-md-5" >
 <img src="/OneWayCab/resources/images/admincar2.gif" height="100%" width="100%" border-radius="50%">
 </div>
 </div>
<br><br>
<footer class="container-fluid" style="background-color:black;"><font color="white">
			
			<div class="container">
				<div class="row">
					<div class="col-md-9">
					    <h2>Contact Us</h2><br>
					    <p>One Way Pvt. Ltd.<br>
						   Ranchi-834006<br>
						   Jharkhand, India<br>
						   Contact No: 1234563546<br>
						   Email Id: info_onewaycab@gmail.com</p>
					</div>
					<div class="col-md-3">
					    <h2>Our Services</h2><br>
					    <p class="colorD"><a href="/OneWayCab/chooseCities">Book Cab</a><br>
						   <a href="/OneWayCab/chooseCities">home</a><br>
						   <a href="/OneWayCab/contactus">contact</a><br>
						   
						   </p>
					</div>
				</div>
				
				<div class="row">
				    <div class="col-md-12 text-center">
					<h6>� One Way Cab Pvt.</h6>
					</div>
					
				</div>
			</div>
			
		</footer>
</body>
</html>