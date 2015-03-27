<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
    
<html>
<head>
   	<title>JSP/Servlet Example</title>
   	<style> 
   		body{
   		background-image:url("사진.jpg");
   		background-repeat:no-repeat;
   		background-attachment:fixed;
   		}
   		input, select, textarea { 
   			border:green 1pt solid;
   			color:blue;
   			font-size:10px;
   			background-color:white;
   			}
   	</style> 
   	
   	<script>
   		function gofunc(){
   			alert("Hello JavaScript!");
   		}
   	</script>
   	
</head>
<body>
    <h1>request test</h1>
<hr>

<form action="TestServlettwo" onsubmit="return gofunc()">

	<label for="name">이름 :</label> <input type="text" id="name" name="name"><br>
	<label for="password">비밀번호 : </label><input type="text" id="password" name="pwd"><br>
		<input type="radio" name="gender" value="남자"> 남자
		<input type="radio" name="gender" value="여자"> 여자 <br>
		
		<input type="checkbox" name="hobby" value="s"> 축구	
		<input type="checkbox" name="hobby" value="k"> 농구
		<input type="checkbox" name="hobby" value="b"> 야구
		
		<input type="color" name="myc"><br>
		<input type="email" name="myEmail"><br>	
		
		<select name="subject">
			<option value="java">Java</option>
			<option value="jsp">JSP</option>
			<option value="html">HTML</option>
		</select><br>
		<textarea rows="100" cols="50" name="text"></textarea><br>	
		
    	<input type="submit" value="서버로 제출">
	
</form>
</body>
</html>

