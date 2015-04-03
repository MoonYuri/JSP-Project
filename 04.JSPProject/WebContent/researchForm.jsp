<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
    
<html>
<head>
   	<title>설문 조사</title>
   	<style>
   		table{
   			border-collape:collapse;
   			border:2px red solid
   		}
   	</style>
</head>

<body>
<h2>설문 조사</h2>
<form action="research.jsp" method ="post">
	<table border="1">
		<tr>
			<td> 이름 : </td>
			<td>
				<input type="text" name ="name" >
			</td>
		</tr>
		<tr>
			<td> 성별 : </td>
			<td>
				<input type="radio" name="gender" value="male"> 남자
				<input type="radio" name="gender" value="female"> 여자
			</td>
		</tr>
		<tr> 
			<td> 좋아하는 계절 : </td>
			<td> 
				<input type="checkbox" name="season" value="1"> 봄
				<input type="checkbox" name="season" value="2"> 여름
				<input type="checkbox" name="season" value="3"> 가을
				<input type="checkbox" name="season" value="4"> 겨울
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type ="submit" value="전송">
				<input type ="reset" value="취소">
			</td>
		</tr>
	</table>			 	

</form>
</body>
</html>