<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("id", "admin");
	request.setAttribute("pw", "adminpw");
	request.setAttribute("name", "홍길동");
	request.setAttribute("addr", "서울");
	request.setAttribute("email", "hgd@naver.com");
%>
<jsp:forward page="/getAttribute.jsp"></jsp:forward>
</body>
</html>