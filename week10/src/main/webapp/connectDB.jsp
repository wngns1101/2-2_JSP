<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터베이스 연결</h3>
	<%
		// 1. 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
		
		String jdbcURL = "jdbc:mysql://localhost:3306/jspDB";
		String dbUser = "root";
		String dbPass = "Wkrwjs4602!";
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
		
		// 3. statement 생성
		stat = conn.createStatement();
		
		// 4. 쿼리 실행
		String sql = "select * from emp";
		rs = stat.executeQuery(sql);
		
		// 5. 쿼리 실행 결과 출력
		if(rs != null){
			out.println("데이터베이스 연결 성공!");
		}else{
			out.println("데이터베이스 연결 실패!");
		}
		
		rs.close();
		conn.close();
	%>
</body>
</html>