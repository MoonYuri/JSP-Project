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
<table>
	<tr>
	<td><label for="id">아이디 : </label></td>
	<td><input type="text" name="id" id="id"></td>
	</tr>
	<tr>
	<td><label for="pwd">비밀번호 : </label></td>
	<td><input type="password" name="pwd" id="pwd"></td>
	</tr>
</table>
	<input type="submit" value="가입">
</form>

</body>
</html>