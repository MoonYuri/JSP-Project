<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	//https://github.com/MoonYuri/JSP-Project
	
	//0. 요청 처리
	String id = request.getParameter("id");

	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	// 3. SQL문 실행
	String sql = "delete member where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);//statement와 동일 기능
	
	//바인딩 : 변수와 물음표의 매핑
	pstmt.setString(1, id);  //물음표 1번째꺼 String형태로 id 매핑
	
	int result = pstmt.executeUpdate();
	//out.print(result);
	
	if(result == 1)
		response.sendRedirect("list");

	// 4. 데이터베이스와 연결 끊음
	pstmt.close();
	con.close();

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