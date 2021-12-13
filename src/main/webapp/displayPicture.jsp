<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Pictures</title>
</head>
<body>
<jsp:include page="/menu.jsp" />
<h1>My Photos</h1>
<img src="wutang.jpg" alt="A Better Tomorrow">
<input type="hidden" name="action" value="picture" />
</body>
</html>