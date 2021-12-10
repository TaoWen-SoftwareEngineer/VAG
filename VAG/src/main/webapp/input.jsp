<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landing Page</title>

</head>
<body>
<jsp:include page="/menu.jsp" />
<h1>Tao Wen's Dynamic Web</h1>
<form name="myForm" action="${pageContext.request.contextPath}/Book/List" method="post"> 
 <label>Input Something: </label> <input type="text" name="input"/><br/>
 <input type="hidden" name="action" value="insertRandom" />
 <input type ="submit" value="Submit"/>
</form>
</body>
</html>