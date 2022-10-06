<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="cal" class="week6.Calculator"></jsp:useBean>
	<jsp:setProperty property="*" name="cal"/>
	
	<h1>계산기 - useBean</h1>
	<hr>
	결과: <%=cal.calc() %>
</body>
</html>