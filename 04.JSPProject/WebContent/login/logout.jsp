<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("loginID");

	session.invalidate(); //세션에저장된모든내용삭제

	response.sendRedirect("main.jsp");
		
%>    
<!DOCTYPE html>
    
<html>
<head>
   	<title>logout</title>
</head>
<body>

</body>
</html>