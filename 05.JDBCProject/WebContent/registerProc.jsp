<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	//0. 요청 처리
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");
	String pass = request.getParameter("userpwd");
	String name = request.getParameter("username");
	String age = request.getParameter("userage");
	String gender = request.getParameter("usergen");
	String addr = request.getParameter("useraddr");
	//out.print(id);
	
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	// 3. SQL문 실행
	/* 1) Statement 객체 이용
	String sql = "insert into member values('" + id + "', '" + pass +"', '" + name + "', '" + age + "', '" + gender + "', '" + addr + "', sysdate)";
	Statement stmt = con.createStatement(); //스테이트먼트객체 생성
	int result = stmt.executeUpdate(sql); //적용된 행의 갯수를 보기위해서 executeUpdate spl에서 실행한것과 같은 동작
	
	out.print(result); */
	
	// 2) PreparedStatement 객체 이용
	String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	PreparedStatement pstmt = con.prepareStatement(sql);//statement와 동일 기능
	
	//바인딩 : 변수와 물음표의 매핑
		pstmt.setString(1, id);  //물음표 1번째꺼 String형태로 id 매핑
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		pstmt.setInt(4, Integer.parseInt(age));
		pstmt.setString(5, gender);
		pstmt.setString(6, addr);
		
	int result = pstmt.executeUpdate();
	out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	//stmt.close();
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