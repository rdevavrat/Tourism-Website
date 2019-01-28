<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />	


<script src="bootstrap/js/modernizr.custom.97074.js"></script>

<%-- 
<link href="<c:url value="bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

        <script src="<c:url value="bootstrap/js/jquery.min.js" />"></script>
    <script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
    
    
        <script src="<c:url value="bootstrap/js/jquery-1.8.2.js" />"></script>
    <script src="<c:url value="bootstrap/js/jquery-ui.js" />"></script>


	<link href="<c:url value="bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <script src="<c:url value="bootstrap/js/jquery.min.js" />"></script>
    <script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
    
    
    <script src="<c:url value="bootstrap/js/jquery-1.8.2.js" />"></script>
    <script src="<c:url value="bootstrap/js/jquery-ui.js" />"></script>
 --%>
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



<SCRIPT >
var countrow = 1;
var cou=0;
	function addRow(tableID) {
		
		var hold="b";
		countrow++;
		var table = document.getElementById(tableID);
		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);
		var counts=rowCount-1;
		
		
		var cell1 = row.insertCell(0);
		var namerow = document.createElement("input");
		namerow.type = "text";
		namerow.placeholder = "Name";
		namerow.setAttribute('class','form-control');
		namerow.name="paxdetailref["+counts+"].name";
		cell1.appendChild(namerow);


		var cell2=row.insertCell(1);
		var genderrow=document.createElement("select");
		genderrow.setAttribute('class','form-control');
		genderrow.name=" paxdetailref["+counts+"].gender";
			var opt1 = document.createElement("option"); 
			opt1.innerHTML = "Male";
	    	opt1.value = "M";
	    	genderrow.add(opt1,null);
	    	
	    	var opt2 = document.createElement("option"); 
			opt2.innerHTML = "Female";
	    	opt2.value = "F";
	    	genderrow.add(opt2,null);
			cell2.appendChild(genderrow);
		
	 	var cell3 = row.insertCell(2);
		var daterow = document.createElement("input");
		daterow.type = "date";
		daterow.setAttribute('class','form-control');
		daterow.setAttribute('onblur','calAge()');
		daterow.id=hold+counts;
		cell3.appendChild(daterow);   
		
		/* var cell4 = row.insertCell(3);
		var agerow = document.createElement("input");
		agerow.type = "text";
		agerow.name="paxdetailref["+counts+"].age";
		cell4.appendChild(agerow);  */
	
	}
	
	
	function calAge()
	{
		flag=0;
		var rowCount = countrow;		
		for(i=0; i<countrow; i++)
			{
				var hold="a"+(i+1);
				var hold2="b"+i;
				var obj=document.getElementById(hold);
				var temp1 = document.getElementById(hold2);;
				var val1 = temp1.value;
	    		var date1 = new Date();
				var date2 = new Date(val1);
				var y1 = date1.getFullYear();
				var y2 = date2.getFullYear();
				var age = y1 - y2;
				var table = document.getElementById("paxTable");
				 
				var row=table.rows[i+1];
				var cellCount = row.cells.length;
				
				if(!isNaN(age))
				{
					if(cellCount==4)
					{
						addBedDetail(age,rowCount,0);
					}
					else if(cellCount==3)
					{	
						addBedDetail(age,rowCount,1);
					}
					else if(cellCount==5)
					{
						if(age!=obj.value)
						{//alert("in");
							addBedDetail(age,i+1,1);
						}
					}
					else
					{
						addBedDetail(age,rowCount,0);
					}
					
				}
			}		
	}
	
	
 	function  addBedDetail(age,rowCountt,flag)
	{	
		var table = document.getElementById("paxTable");
		var row=table.rows[rowCountt];
		if(row.cells.length==4 ||flag==1)
		{
			if(flag==1 && row.cells.length==5)
			{
				//alert("next");
				row.deleteCell(4);
				row.deleteCell(3);	
			}
			
			var hold=rowCountt-1;
			var cell3 = row.insertCell(3);
			var agerow = document.createElement("input");
			agerow.type = "text";
			agerow.setAttribute('class','form-control');
			agerow.name="paxdetailref["+hold+"].age";
			agerow.value=age;
			agerow.readOnly=true;
			agerow.id="a"+rowCountt;
			cell3.appendChild(agerow);  
			
			
			var cell4 = row.insertCell(4);
			var bedrow=document.createElement("select");
			bedrow.name="paxdetailref["+hold+"].beddet";
			bedrow.setAttribute('class','form-control');
			bedrow.id=rowCountt;
			if(age>12)
			{
				var opt1 = document.createElement("option"); 
				opt1.innerHTML = "singlebed";
	    		opt1.value = "singlebed";
	    		opt1.setAttribute('class','form-control');
	    		bedrow.add(opt1,null);
	    	
	    		var opt2 = document.createElement("option"); 
				opt2.innerHTML = "twinsharing";
	    		opt2.value = "twinsharing";
	    		opt2.setAttribute('class','form-control');
	    		bedrow.add(opt2,null);
	    	
	    		var opt3 = document.createElement("option"); 
				opt3.innerHTML = "extraperson";
	    		opt3.value = "extraperson";
	    		opt3.setAttribute('class','form-control');
	    		bedrow.add(opt3,null);
			}
			else
			{
				var opt1 = document.createElement("option"); 
				opt1.innerHTML = "childwithoutbed";
	    		opt1.value = "childwithoutbed";
	    		opt1.setAttribute('class','form-control');
	    		bedrow.add(opt1,null);
	    	
	    		var opt2 = document.createElement("option"); 
				opt2.innerHTML = "childwithbed";
	    		opt2.value = "childwithbed";
	    		opt2.setAttribute('class','form-control');
	    		bedrow.add(opt2,null);
			}
	
			cell4.appendChild(bedrow);
		}
	} 
	
 	
 	function showTable()
 	{
 		 
 		    var x = document.getElementById("info");
 		    if (x.style.display === "none") {
 		        x.style.display = "block";
 		    }
 		   var table = document.getElementById("paxTable");
 		   var adult=0;
 		   var child=0;
 		   var infant=0;
 		   var totalAmt=0;
 		   for(i=0; i<countrow; i++)
			{
 			   	var hold=i+1;
 			  	var hold2="b"+i;
 			  	var bedInfo=document.getElementById(hold).value;
  			  	var row=table.rows[i+1];
  			  	var temp1 = document.getElementById(hold2);;
				var val1 = temp1.value;
	    		var date1 = new Date();
				var date2 = new Date(val1);
				var y1 = date1.getFullYear();
				var y2 = date2.getFullYear();
				var age = y1 - y2;
 			  	if(age>12)
 				{
 					adult++;
 				 	if(bedInfo=="singlebed")
 					{
 						totalAmt+=${tourCostObj.costofsinglebed};
 					}
 					else if(bedInfo=="twinsharing")
 					{
 						totalAmt+=${tourCostObj.getCostoftwinsharing()};
 					}
 					else if(bedInfo=="extraperson")
 					{
						 totalAmt+=${tourCostObj.getCostaddition()};
 					}	 
 				  
 				}
 			  	else if(age<=12 && age>0)
 				{
 				 	if(bedInfo=="childwithoutbed")
 					{
 						totalAmt+=${tourCostObj.getCostofchildwithoutbed()};
 					}
 					else if(bedInfo=="childwithbed")
 					{
 						totalAmt+=${tourCostObj.getCostofchildwithbed()};
 					}
 				  	child++;
 				}
 			  	else if(age==0)
 				{
 				  infant++;
 				}
			}
 		   	document.getElementById("nop").value=adult+child+infant;
 		  	document.getElementById("adlt").value=adult;
 		 	document.getElementById("chil").value=child;
 			document.getElementById("inft").value=infant;
 			document.getElementById("amt").value=totalAmt;
 	
 	}
</script>
<body>

<div class="container">



<div class="col-lg-12 well">
 <h1 class="well">Booking Form</h1> 
	
		<div class="row">
		<div class="col-sm-6 form-group">
			<label>Userid:</label>
			<input class="form-control" name="userid" value="${userob.userid }" readOnly>
		</div>
		
		<div class="col-sm-6 form-group">
			<label>Username:</label>
			<input class="form-control" name="username" value="${userob.fname }" readOnly>
		</div>
		
		
		</div>
		
		
		<f:form method="post" commandName="bookob">
		
		
		<div class="row">
		
		<div class="col-sm-6 colform-group">
				<label>TourDate :</label>
		<select class="form-control" name="ddate">
		<c:forEach var="temp" items="${tourDateList}">
			<option class="form-control" value="${temp.getDeparturedate()}">${temp.getDeparturedate()}</option>
		</c:forEach>
		</select>
		
		</div>
		
		
		<div class="col-sm-6 colform-group">
		<label>Total Amount:</label>
			<input class="form-control" type="text" readOnly name="payment" id="amt">
		</div>
		
		
		</div>
		
		
		<div class="row">
		
   		Pax detail :
    	<TABLE class="table table-hover" id="paxTable" width="350px" border="1">
    	  <thead>
    	<TR>
		<th>Name</th>
        <th>Gender</th>
        <th>Date of Birth</th>
		 <th>Age</th>
		</TR>
		</thead>
		<TR>
            <TD><input type=text placeholder="Name" class="form-control" name="paxdetailref[0].name" /></td>
            <td>
            	<select class="form-control" id="myDropDown" name="paxdetailref[0].gender">
            	<option class="form-control" value="M">Male</option>
            	<option  class="form-control"value="F">Female</option>
            	</select>
            </td>
            <TD><input class="form-control" type=date  id="b0"  onblur="calAge()" /></TD>
            
 		</TR>
 		</TABLE>
 		
 		</div>
 		
 		
 		
 		
 		
    <div class="row">
    
    <div class="col-sm-4 form-group">
		<INPUT class="form-control btn btn-primary" type="button" value="Add Pax" onclick=" addRow('paxTable')" />
	</div>
	
	<div class="col-sm-4 form-group">
		<input  class="form-control btn btn-warning" type="button" value="Done" onclick="showTable()"/>
	</div>
	
	<div class="col-sm-4 form-group">
		<input class="form-control btn btn-success"  type="submit" value="Submit">
	</div>
		
	</div>
	</f:form>



<table id="info" border="1" style="display:none">
<tr>
<th>
Number Of Passenger
</th>
<th>
Adults
</th>
<th>
Children
</th>
<th>
Infants
</th>
</tr>
<tr>
<td>
<input type="text" id="nop" name="nop" disabled="disabled">
</td>
<td>
<input type="text" id="adlt" disabled="disabled">
</td>
<td>
<input type="text" id="chil" disabled="disabled">
</td>
<td>
<input type="text" id="inft" disabled="disabled">
</td>
</tr>
</table>


<table border="2" class="table table-hover" >
  <thead>
<tr>
<th>Cost Of Single Bed</th>
<th>Cost Of Twin Sharing</th>
<th>Cost Of Child With Bed</th>
<th>Cost Of Child Without Bed</th>
<th>Cost Of Additional</th>
</tr>
</thead>
<tr>
<td>${tourCostObj.getCostofsinglebed()}</td>
<td>${tourCostObj.getCostoftwinsharing()}</td>
<td>${tourCostObj.getCostofchildwithbed()}</td>
<td>${tourCostObj.getCostofchildwithoutbed()}</td>
<td>${tourCostObj.getCostaddition()}</td>
</tr>
</table>



</div>

</div>
</body>
</html>