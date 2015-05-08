<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="exam.dao.*" %>
<%@ page import="exam.dto.*" %>

<% 
	//0. 요청 처리
	//request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");
	String pass = request.getParameter("userpwd");
	String name = request.getParameter("username");
	String age = request.getParameter("userage");
	String gender = request.getParameter("usergen");
	String addr = request.getParameter("useraddr");
	//out.print(id);

	MemberDAO dao = new MemberDAO();
	
	Member member = new Member();
	
	member.setId(id);
	member.setPass(pass);
	member.setName(name);
	member.setAge(Integer.parseInt(age));
	member.setGender(gender);
	member.setAddr(addr);
	
	dao.insertMember(member);
%>

    
<!DOCTYPE html>
    
<html>
<head>
<meta charset="UTF-8">

   	<title>JSP/Servlet</title>
	
</head>
<body>

</body>
</html>