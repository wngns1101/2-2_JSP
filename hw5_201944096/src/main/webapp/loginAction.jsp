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
	String id = request.getParameter("id");
	int pw = Integer.parseInt(request.getParameter("pw"));
	
	if(id.equals("admin") && pw == 1234){
%>
		<a> <%= id %>님 안녕하세요!</a>		
<%
	}else if(id.equals("admin") && pw != 1234){
%>
		<a>비밀번호가 틀립니다</a>
<%
	}else if(!id.equals("admin") && pw == 1234){
%>
		<a>아이디가 틀립니다</a>
<%
	}else{
%>
		<a>아이디와 비밀번호가 틀립니다</a>
<%
	}
%>
	<br><br>
	<button onclick="location.href='login.jsp'">돌아가기</button>
</body>
</html>