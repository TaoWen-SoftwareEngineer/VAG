<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete a Book</title>
</head>
<body>
<jsp:include page="/menu.jsp" />
<h1>Delete a Book</h1>
<form name="deleteBook" action="${pageContext.request.contextPath}/Book/List" method="post"> 
 <label>Enter Book Name to Delete (Not Case Sensitive): </label> <input type="text" name="bookName"/><br/>
 <input type="hidden" name="action" value="deleteBook" />
 <input type ="submit" value="Submit"/>

</form>
</body>
</html>