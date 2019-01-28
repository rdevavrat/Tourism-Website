<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<html>
<head>
<head>
<title>Iternary</title>


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

</head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="bootstrap/js/modernizr.custom.97074.js"></script>
</head>
<body>
	
<script>
function checkradio()
{
	var radio_buttons = formsearch.selectField;
	var re = false;
	for(var i=0; i<radio_buttons.length; i++) 
	{
	/* alert(radio_buttons[i].checked); */
	if (radio_buttons[i].checked == true) 
	{
		document.getElementById("error").innerHTML=" ";
		re = true;
		}
	}
	document.getElementById("error").innerHTML="select radio button";
	return re;
	
	
	
}

</script>	
<img src="images/b2 - Copy.jpg" alt="" />


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
							<li><a href="search.jsp" data-hover="Search">Search</a></li>
							<li><a href="Contact_us.jsp" data-hover="Contacts">Contacts</a></li>
							<li><a href="About_us.jsp" data-hover="About">About</a></li>
							   
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			<div class="clearfix"></div>
			</div>	
		</div> 
	</div>


	<div class="col-sm-2 ">
	</div>
	
	<div class="col-sm-8 ">
	
	
	<div>
		 <form method="post" action="search_tour.do" name="formsearch">
	
	<br><br>
		 
<div class="row">	 
 <input type="radio" name="selectField" id="period" value="period"> period<br>
 
 <div class="col-sm-2 ">
	</div>
	
<div class="col-sm-4 ">
 From:<input  class="form-control" name="fromDate" type="date" min="2018-01-11" max="2018-12-24"></div>
 <div class="col-sm-4 ">
 To: <input  class="form-control" name="toDate" type="date" min="2018-01-11" max="2018-12-24"></div>
  <div class="col-sm-2 ">
	</div>
 </div>	
 
 
 
 
 
 <div class="row">
 </br>

  <input type="radio" name="selectField" id="cost" value="cost"> cost<br>
 <div class="col-sm-2 ">
	</div>
	<div class="col-sm-4 ">
 Minimum : <input class="form-control" name="fromCost"  type="text"></div>
 <div class="col-sm-4 ">
 Maximum : <input class="form-control" name="toCost" type="text"></div>
 <div class="col-sm-4 "></div>
 </div>
 
 
 
 
 <div class="row">
   <input type="radio" name="selectField" id="noofdays" value="noofdays"> Duration<br>
<div class="col-sm-2 ">
	</div>
	<div class="col-sm-4 ">
 from:<input class="form-control" name="fromnof"  type="text"></div>
 <div class="col-sm-4 ">
 to: <input class="form-control" name="tonof" type="text"></div>
 <div class="col-sm-4 "></div>
 </div>
 
 
 
<div class="col-sm-4 ">
	</div>
	<div class="col-sm-4 ">
<input  type="submit" onclick="return checkradio()" value="Search"></a>
<br><span id="error" style="color:red"></span>
</div>
<div class="col-sm-4 ">
	</div>

<br><br><br><br>
</form>
</div>


	</div>
	
	<div class="col-sm-2 ">
	</div>

<div class="row">

<div class="col-sm-8 ">
<table border="1" class=table table-hover">
<!-- <td>tourname</td>
 <td>cost</td>
 --><c:forEach var="v" items="${listtour }">
<tr>
<td>${v.tourname}</td>
<td>${v.cost}</td>
<td>${v.departuredate }</td> 
<td>${v.arrivaldate }</td>

<td><a href="iternaryFetch.do?linktourid=${v.tourid}">detail</a></td>
</tr>
</c:forEach>
</table>
</div>


</div>


			
</body>
</html>
