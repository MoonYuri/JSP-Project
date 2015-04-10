<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	if(id.equals("test") && pwd. equals("1234")){
		out.print("로그인 성공!");
		session.setAttribute("loginID", id ); //메인화면까지 정보유지
		response.sendRedirect("main.jsp");
		
	}
	else {
		out.print("로그인 실패!");
		response.sendRedirect("loginForm.jsp");
	}
%>

    
<!DOCTYPE html>
    
<html>
<head>
   	<title>testLogin</title>
</head>
<body>
	

</body>
</html>