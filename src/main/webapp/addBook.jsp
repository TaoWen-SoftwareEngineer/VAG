<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu.jsp" />
<h1>Add a Book</h1>
<form name="addBook" action="${pageContext.request.contextPath}/Book/List" method="post"> 
 <label>Enter Name of Book to Add: </label> <input type="text" name="bookName"/><br/>
 <label>Enter Author of Book to Add: </label> <input type="text" name="bookAuthor"/><br/>
 <input type="hidden" name="action" value="addBook" />
 <input type ="submit" value="Submit"/>

</form>
</body>
</html>