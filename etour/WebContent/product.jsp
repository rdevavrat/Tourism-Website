<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Index</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="bootstrap/js/modernizr.custom.97074.js"></script>
<style>
.bback{ position: relative;

	  font-size: 1.5em;
    text-align: center;
	color: #ffffff;
}

.ttext-block {
    position: absolute;
    bottom: 150px;
    right: 360px;
    color: #cceeff;
    padding-left: 20px;
    padding-right: 20px;
}


</style>
</head>
<body>
<div class="bback">
	<!-- <img src="images/b2 - Copy.jpg" alt="" /> -->	
	<!-- 	<div class="ttext-block">
		<h2 class="tittle">TEAM 5 TOURISM</h2>-->
  </div>
</div>


	
	<div class="container-fluid bg-3"  >  
	<br><br>
	<div class="col-sm-1 ">
	</div>

	<div class="col-sm-10 ">
	
	<ul class="nav nav-tabs">
		<li ><a href="iternaryFetch.do?linktourid=${touri}">Itinerary</a></li>
		<li><a href="costfetch.do?linktourid=${touri}">Cost</a></li>
		<li><a href="datefetch.do?linktourid=${touri}">Dates</a></li>
		<li><a href= "new_login.do?linktourid=${touri}">Book</a> </li>
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
								<a href= "new_login.do?linktourid=${v.tourid}" class="b-link-stripe b-animate-go thickbox">
									<img src="${v.imagepath} "  alt="" />
									<div>
										<h5> ${v.tourname}</h5>
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
	
	<div class="col-sm-7 ">
	<c:forEach items="${it}" var="temp">
<table  >
 <tr>
                       
                        <td>DAY ${temp.daynumber}</td>
                    
                        <td>::${temp.daysdescription}</td><br>
                       
 </tr>
  </table>
 </c:forEach>
	</div>
	
	</div>
	
	
	<div class="col-sm-1 ">
	</div>
	
		<!--footer-->
	
			
</body>
</html>
