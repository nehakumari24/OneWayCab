<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fares</title>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<a href="/OneWayCab/chooseCities">Go back to Home Page</a> <br><br>

<h1>Fare from city ${pickupCity} to ${destinationCity}: </h1>
<h2>Swiftfare is ${swiftFare}</h2>
<a href="/OneWayCab/bookSwift">BookNow</a>

<h2>innovaFare is ${innovaFare}</h2>
<a href="/OneWayCab/bookInnova">BookNow</a>

<h2>suvFare is ${suvFare}</h2>
<a href="/OneWayCab/bookSuv">BookNow</a>

</body>
</html>