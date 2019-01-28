<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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


<SCRIPT >
var countrow = 1;
	function addRow(tableID) {
countrow++;
		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);
		var counts=rowCount-1;
		
		
		var cell1 = row.insertCell(0);
		var namerow = document.createElement("input");
		namerow.type = "text";
		namerow.name="paxdetailref["+counts+"].name";
		cell1.appendChild(namerow);


		var cell2 = row.insertCell(1);
		var genderrow = document.createElement("input");
		genderrow.type = "text";
		genderrow.name="paxdetailref["+counts+"].gender";
		cell2.appendChild(genderrow);
		
	 	 var cell3 = row.insertCell(2);
		var daterow = document.createElement("input");
		daterow.type = "date";
		daterow.class="form-control";
		daterow.name="paxdetailref["+counts+"].dob";
		cell3.appendChild(daterow);  
		
		var cell4 = row.insertCell(3);
		var agerow = document.createElement("input");
		agerow.type = "text";
		agerow.name="paxdetailref["+counts+"].age";
		//agerow.disabled=true;
		cell4.appendChild(agerow); 

		
		
	}
	function calAge()
	{
		var rowCount = countrow;
		for(i=0; i<countrow; i++)
			{
				alert("dfs");
				var temp1 = document.getElementsByName("paxdetailref["+i+"].dob");
				var val1 = temp1[0].value;
				alert(val1);
	    		var date1 = new Date();
				var date2 = new Date(val1);
				var y1 = date1.getFullYear();
				var y2 = date2.getFullYear();
				var age = y1 - y2;
				var temp2 = document.getElementsByName("paxdetailref["+i+"].age");
				alert(temp2.name);
				temp2[0].value = age;
				alert(temp2[0].value);
			}
		
	}
</SCRIPT>
</HEAD>
<BODY>	
<% int id=0;
int i=0;%>
userid: <input name="userid" value="${userob.userid }"disabled>
username : <input name="username" value="${userob.fname }" disabled>
   <f:form method="post" commandName="bookob">
   
  <br><br>
   Pax detail :
    <TABLE id="paxTable" width="350px" border="1">
    	<TR>
		<TD>Name</TD>
		<TD>Gender</TD>
		<TD>Date of birth</TD>
		<TD>Age</TD>
	
	</TR>
	
	
	<TR>
            <TD><input type=text  name="paxdetailref[0].name" /></TD>
              <TD><input type=text name="paxdetailref[0].gender"/></TD>
            <TD><input type=date  name="paxdetailref[0].dob"   /></TD> 
             <TD><input type="text" name="paxdetailref[0].age" /></TD> 
  </TR>
	
    </TABLE>
<INPUT type="button" value="Add pax" onclick=" addRow('paxTable'), calAge()" />
<br>
<input type=submit value="Submit" onclick="calAge()"/>
</f:form>
</body>
</html>