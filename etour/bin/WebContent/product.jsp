<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<c:forEach var="v" items="${tourdetail}">

<tr> 
<td> ${v.tourname}</td>
<td> ${v.cost}</td>
<td>  <img height="30" border="2"  width="30" src="${v.imagepath} " /></td>
<a href= "book_tour.do?linktourid=${v.tourid}">book</a>
</tr>

</c:forEach>
</table>

</table>
</body>
</html>

