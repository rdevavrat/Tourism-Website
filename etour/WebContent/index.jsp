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

	
	
		<!--gallery-->
		<div class="gallery" id="tours">
		<div class="container">
			<!--	<h2 class="title">TEAM 5 TOURISM</h2>
					<center><span>Best Travel Packages Available</span></center>    	-->
				<div class="gallery-grids">
					<section>
						<ul id="da-thumbs" class="da-thumbs">
						<c:forEach var="v" items="${homelist}">	
							<li>
								<a  href="sector_tour.do?linkhome=${v.homeid}" class="b-link-stripe b-animate-go thickbox">
									<img src="${v.imagepath} "  alt="" />
									<div>
										<h5>${v.catname}</h5>
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
	
	
	
		<!--footer-->
	
			
</body>
</html>
