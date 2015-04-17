<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
    
<html>
<head>
<meta charset="UTF-8">

   	<title>JSP/Servlet</title>
	
</head>
<body>
<h1>회원 가입</h1>
<hr>

<form action="registerProc.jsp">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd">
	<input type="submit" value="가입">
</form>

</body>
</html>