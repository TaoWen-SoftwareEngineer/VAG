<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>

</head>
<body>
<jsp:include page="/menu.jsp" />
<h1>Success Page </h1>


 <p>Hello there. <br> ${message}</p>
</body>
</html>