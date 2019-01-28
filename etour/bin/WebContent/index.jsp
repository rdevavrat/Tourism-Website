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
<c:forEach var="v" items="${homelist}">

<tr> 
<td> ${v.catname}</td>
<td> <a href="sector_tour.do?linkhome=${v.homeid}"> <img height="70" border="2"  width="70" src="${v.imagepath} " /></a>
</td>
</tr>

</c:forEach>
</table>
</body>
</html>