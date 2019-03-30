<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
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
      <li><a href="/OneWayCab/chooseCities">Home</a></li>
      <li class="active"><a href="/OneWayCab/aboutus">About Us</a></li>
      <li><a href="/OneWayCab/chooseCities">Book Cab</a></li>
      <li><a href="/OneWayCab/contactus">Contact Us</a></li>
      <li><a href="#">Check Booking Status</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="/OneWayCab/admin/login"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a></li>
    </ul>
  </div>
</nav>
<container>
<div class="row" style="background-color:#FDFEFE;">
	<div class="col-md-8">
	
	<h2>Who we are:</h2>
	</br>
	<p>
	We make all the effort to ensure that every customer enjoy cab ride and gets comfortable, well maintained Cabs at an affordable price without any hassles. This provides the touch of security, comfort & accountability to the customers.
	</p>
	<p>
	It has been founded on the belief: Return Fare, Not Fair! 
	So now when you travel one-way, <b>you pay for one-way.</b>
	</p>
	<p>
	<b>Trust that:</b>
	<ul>

<li>Cab / Taxi will arrive on Time</li>

<li>Cab / Taxi will be clean & Well-Maintained</li>

<li>Driver will be well-behaved & Professional in nature</li>

<li>Fares will be transparent in nature with no hidden charges.</li>

<li>Any-time 24x7 Support Team, whenever you need us</li>
</ul>
	</p>
	<p>
	<b>Person behind the curtain who make sure you have an amazing ride:</b>
<ul>

<li>Neha Kumari, Co-Founder & CEO</li>

<li>Roshni Kumari, Co-Founder & COO</li>

<li>Kuldeep Kumar, Co-Founder & Advisor</li>

<li>Akhilesh Sharma, Advisor</li>
</ul>
	</p>
	</div>
	<div class="col-md-4">
	</div>
	</div>
</container>
 
    

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
					<h6>© One Way Cab Pvt.</h6>
					</div>
					
				</div>
			</div>
			
		</footer>
</body>
</html>