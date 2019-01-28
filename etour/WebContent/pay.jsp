<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<title>Insert title here</title>

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

<div class="col-sm-3 ">
</div>

<div class="col-sm-6 ">


<table border="1" class="table table-hover">
<thead>
<th>Information</th>
<th>xxx</th>
</thead>

<tr>
<td>name:</td> <td> ${userob.fname }</td>
</tr>

<tr>
<td>email: </td> <td>${userob.email }</td>
<tr>
<td>lname: </td> <td> ${userob.lname }</td>
<tr>
<td>no of person:  </td> <td>${bookob.noofperson }</td>
<tr>
<td>payment: </td> <td> ${bookob.payment }</td>
<tr>
<td>date of departure : </td> <td> ${bookob.dateofdeparture }</td>
<a href="generate/pdf.do">generate pdf</a>



</table>




</div>

<div class="col-sm-3 "></div>




</body>
</html>