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
	String id = (String)request.getAttribute("id");
	String pw = (String)request.getAttribute("pw");
	String name = (String)request.getAttribute("name");
	String addr = (String)request.getAttribute("addr");
	String email = (String)request.getAttribute("email");
%>

	<h3> 기본 객체의 속성을 이용한 값 전달 결과</h3>
	<h4>
		아이디: <%=id %><br>
		패스워드: <%=pw %><br>
		이름: <%=name %><br>
		주소: <%=addr %><br>
		아메일: <%=email %><br>
	</h4>
</body>
</html>