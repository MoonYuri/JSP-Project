<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int num1=10, num2=20;
	
	int num3 = num1+ num2;
	
 	out.print(num3 + "<br>"); 

%>    
<!DOCTYPE html>
    
<html>
<head>
   	<title>JSP Servlet</title>
</head>
<body>

<!-- test.jsp -->
<!-- HTML 주석 -->

 <% out.print("Hello" + "<br>"); %>
 <%= "Hello" %>



</body>
</html>