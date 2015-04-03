<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
    
<html>
<head>
   	<title>JSP/Servlet Example</title>
</head>
<body>

	<h1>Error!!!!!!!</h1>
	다음과 같은 에러가 발생하였습니다.<br>
	<%= exception.getMessage() %>
</body>
</html>