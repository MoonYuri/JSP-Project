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
	<td><input type="text" name="userid" id="id"></td>
	</tr>
	<tr>
	<td><label for="pwd">비밀번호 : </label></td>
	<td><input type="password" name="userpwd" id="pwd"></td>
	</tr>
	<tr>
	<td><label for="name">이름 : </label></td>
	<td><input type="text" name="username" id="name"></td>
	</tr>
	<tr>
	<td><label for="age">나이 : </label></td>
	<td><input type="text" name="userage" id="age"></td>
	</tr>
	<tr>
	<td><label for="gender">성별 : </label></td>
	<td><input type="radio" name="usergen" id="gender" value="m">남자
	    <input type="radio" name="usergen" id="gender" value="f">여자</td>
	</tr>
	<tr>
	<td><label for="addr">주소 : </label></td>
	<td><input type="text" name="useraddr" id="addr"></td>
	</tr>
	
</table>
	<input type="submit" value="가입">
</form>

</body>
</html>