<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Menu</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<h1>Main Menu</h1>
<nav>
<a href="${pageContext.request.contextPath}/input.jsp">Insert Page</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/Book/List">List All My Books</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/displayPicture.jsp">Display My Photos</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/addBook.jsp">Add Book</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/deleteBook.jsp">Delete Book</a>&nbsp;&nbsp;
</nav>
</body>
</html>