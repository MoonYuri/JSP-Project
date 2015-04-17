<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	//out.print(id);
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	// 3. SQL문 실행
	String sql = "insert into member values('" + id + "', '" + pass +"', '홍길동', 20, '1', '서울시', sysdate)";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql); //적용된 행의 갯수를 보기위해서
	
	out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	stmt.close();
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