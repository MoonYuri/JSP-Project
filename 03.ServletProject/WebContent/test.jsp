<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
    
<html>
<head>
   	<title>JSP/Servlet Example</title>
</head>
<body>
    <h1>request test</h1>
<hr>

<form action="TestServlet">
	<label for="name">이름 :</label> <input type="text" id="name" name="name"><br>
	<label for="password">비밀번호 : </label><input type="text" id="password" name="pwd"><br>
		<input type="radio" name="gender" value="남자"> 남자
		<input type="radio" name="gender"value="여자"> 여자 <br>
    	<input type="submit" value="서버로 제출">
	
</form>
</body>
</html>

