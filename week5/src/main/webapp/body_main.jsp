<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Include 전 name 파라미터 값: <%= request.getParameter("name") %>

<hr>
<jsp:include page="body_sub.jsp">
	<jsp:param value="admin" name="name"/>
</jsp:include>

include 후 name 파라미터 값 : <%= request.getParameter("name") %>
</body>
</html>