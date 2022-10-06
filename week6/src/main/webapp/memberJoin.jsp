<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
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
		request.setCharacterEncoding("utf-8");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(date);
	%>
	
	<jsp:useBean id="memberInfo" class="week6.MemberInfo"></jsp:useBean>
	<jsp:setProperty property="*" name="memberInfo"/>
	<jsp:setProperty property="registerDate" name="memberInfo" value="<%= strDate %>"/>
	
		<h3>* 회원 가입 *</h3>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><%=memberInfo.getId() %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><%=memberInfo.getPassword() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=memberInfo.getName() %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=memberInfo.getEmail() %></td>
			</tr>
			<tr>
				<td>등록일자</td>
				<td><%=memberInfo.getRegisterDate()%></td>
			</tr>
		</table>
</body>
</html>