<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

        <script src="<c:url value="bootstrap/js/jquery.min.js" />"></script>
    <script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
    
    
        <script src="<c:url value="bootstrap/js/jquery-1.8.2.js" />"></script>
    <script src="<c:url value="bootstrap/js/jquery-ui.js" />"></script>

      <script>
$(function() {
$( ".datepicker" ).datepicker({ changeMonth: true, changeYear: true, yearRange: '1990:2100' ,dateFormat: 'dd-mm-yy' });
});
</script>
<style>
	.error
	{
		color:red;
	}
</style>
<style>
div.ui-datepicker
{
 margin-left:500px;
}
</style>
<style>

body {font-family: Arial;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
body {font-family: Arial;}i
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>




    </head>
<body>
<div class="col-sm-3 "></div>
  <form:form method="post" commandName="signObj" style="border:1px solid #ccc">
  
  <div class="container">
   <h1>Sign Up</h1>
 <p>Please fill in this form to create an account.</p>
    <hr>

<div class="row">
<div class="col-sm-6 ">
  <label><b>Email</b></label>
  <form:errors path="email" cssClass="error"/><br/>
  	<form:input path="email" />
</div>
</div>

<div class="row">
<div class="col-sm-6 ">
  <label><b>First Name</b></label>
  <form:errors path="fname" cssClass="error"/><br/>
  	<form:input path="fname"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>Middle Name</b></label>
  <form:errors path="mname" cssClass="error"/><br/>
  		<form:input path="mname"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
	 
  <label><b>Last Name</b></label>
  <form:errors path="lname" cssClass="error"/><br/>
    	<form:input path="lname"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>Age</b></label>
  <form:errors path="age" cssClass="error"/><br/>
    	<form:input path="age"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>DOB</b></label>
  <form:errors path="dob" cssClass="error"/><br/>
  	<form:input path="dob" cssClass="datepicker"/>
    	
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>Username</b></label>
  <form:errors path="username" cssClass="error"/><br/>
    	 <form:input path="username"/>
</div>
</div>

<div class="row">
<div class="col-sm-6 ">
     <label><b>Password</b></label>
     <form:errors path="password" cssClass="error"/><br/>
     <form:password path="password" name="pass"/>
</div>
</div>


<div class="row">
<div class="col-sm-6 ">
  <label><b>Flast No.</b></label>
  <form:errors path="flatno" cssClass="error"/><br/>
  		<form:input path="flatno"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>City</b></label>
  <form:errors path="city" cssClass="error"/><br/>
    	 <form:input path="city"/>
</div>
</div>
<div class="row">
<div class="col-sm-6 ">
  <label><b>Pin code</b></label>
  <form:errors path="pincode" cssClass="error"/><br/>
  		<form:input path="pincode" />
</div>
</div>
<div class="col-sm-6 ">
    <div class="clearfix">
    	 <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</div>
</form:form>
</body>
</html>
