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

	<br>
	<div class="col-sm-1 "></div>
	<div class="col-sm-10 ">

   <ul class="nav nav-tabs">
		<li ><a href="iternaryFetch.do?linktourid=${tid}">Itinerary</a></li>
		<li class="active"><a href="costfetch.do?linktourid=${tid}">Cost</a></li>
		<li ><a  href="datefetch.do?linktourid=${ tid}">Dates</a></li>
		<li><a href= "new_login.do?linktourid=${tid}">Book</a> </li>
	</ul>
	
	
	<div class="col-sm-5 ">
		<!--gallery-->
		<div class="gallery" id="tours">
		<div class="container">
			<!--	<h2 class="tittle">TEAM 5 TOURISM</h2>
					<center><span>Best Travel Packages Available</span></center>    	-->
				<div class="gallery-grids">
					<section>
						<ul id="da-thumbs" class="da-thumbs">
						<c:forEach var="v" items="${tourdetail}">
							<li>
								<a  class="b-link-stripe b-animate-go thickbox">
									<img src="${list[0].tourcostref.imagepath } "  alt="" />
									<div>
										<h5>${list[0].tourcostref.tourname }</h5>
									</div>
								</a>
							</li>
							
				</c:forEach>
						</ul>
						<div class="clearfix"></div>
					</section>
				</div>
				<script type="text/javascript" src="bootstrap/js/jquery.hoverdir.js"></script>	
				<script type="text/javascript">
					$(function() {
						$('#da-thumbs > li').each( function() { $(this).hoverdir(); } );
					});
				</script>
			</div>
		</div>
	</div>



<div align="center"  class="col-sm-7 ">
<br><br><br><br><br>
<table class="table table-hover" align="center" border="1" >
<th> Addition</th>
<th>Child with bed  </th>
<th>Child without bed:</th>
<th>Single bed:</th>
<th>Twin Sharing: </th>

		<c:forEach items="${list}" var="temp">

 <tr>
                  
                        <td>${temp.costaddition}</td><br>
                        <td>${temp.costofchildwithbed}</td><br >
                        <td>${temp.costofchildwithoutbed}</td><br>
                        <td>${temp.costofsinglebed}</td><br>
                        <td>${temp.costoftwinsharing}</td><br>
                       
 </tr>
  </table>
 </c:forEach> 
 </div>
	</div><div class="col-sm-2 "></div>
	
	
	<div>
	

	
	
	</div>
	
</div>
	
<div class="col-sm-1 ">
</div>
</body>
</html>
