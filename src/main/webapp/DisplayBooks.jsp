<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Favourite Books</title>
</head>
<body>
<jsp:include page="/menu.jsp" /> <!-- Add this to display result on same page as menu -->
<p>Displaying My Favourite Books</p>

<c:forEach var="book" items="${books}">
	<c:out value="${book.key} by ${book.value}"/><br/>
</c:forEach>
</body>
</html>