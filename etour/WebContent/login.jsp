<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<head>
<title>Login</title>


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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />	


<script src="bootstrap/js/modernizr.custom.97074.js"></script>
</head>
<body>
	
	
    <div class="header">
		<div class="container">
			<div class="header-menu">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						  <div class="navbar-brand logo">
								<h1><a href="home_tour.do"><span>TEAM</span> 5</a></h1>
							</div>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav cl-effect-11">
							<li class="active"><a href="home_tour.do" data-hover="Home" class="scroll">Home </a></li>
							<!-- <li><a href="International.html" data-hover="International">International</a></li>
							<li><a href="domestic.html" data-hover="Domestic">Domestic</a></li>
							 --> 
							 			<li><a href="search.jsp" data-hover="Search">Search</a></li>
							<li><a href="Contact_us.jsp" data-hover="Contacts">Contacts</a></li>
							<li><a href="About_us.jsp" data-hover="About">About</a></li>   
						  </ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			<div class="clearfix"></div>
			</div>	
		</div> 
	</div>
	
	<marquee></marquee>	<marquee></marquee>
<div class="col-sm-3 ">
</div>


<div class="col-sm-6 ">

<form:form method="post" style="border:1px solid #ccc" action="new_login.do">
  <div class="container">
    <h1 >Login</h1>
    
    <div class="row">
    <div class="col-sm-6 ">
    <hr>
    </div>
    </div>
    
		<div class="row">
	<div class="col-sm-6 ">
    <label><b>Username</b></label>
      <input type="text" name="username" required> 
    
	</div>
	</div>
		<div class="row">
	<div class="col-sm-6 ">
    <label><b>Password</b></label>
   <input type="password" name="pass" required>
</div>
</div>
	<div class="col-sm-6 ">
    <div class="clearfix">

      <button type="submit" class="signupbtn">Login</button>
       <button type="reset" class="cancelbtn" >Reset</button>

	 
</form:form>	
	  <br>
	
${errormessage }

<a href="signup.do">New user? Sign Up here!!!</a>


</div>
<div class="col-sm-3 ">
</div>


			
</body>
</html>
