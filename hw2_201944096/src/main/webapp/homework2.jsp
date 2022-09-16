<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body
	{
		text-align:center;
  		margin: 0 auto;
  		width: 300px;
	}
</style>
<body>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	String[] sports = request.getParameterValues("sports");
%>

<h4>< 개인정보 입력 결과 ></h4>
<table>
	<tr style="background-color:#003458">
		<td style="color:white">구분</td><td style="color:white">내용</td>
	</tr>
	<tr style="background-color:#A2A2A2">
		<td>이름</td><td><%=name %></td>
	</tr>
	<tr style="background-color:#E2E2E2">
		<td>나이</td><td><%=age %></td>
	</tr>
	<tr style="background-color:#A2A2A2">
		<td>성별</td><td><%=gender %></td>
	</tr>
	<tr style="background-color:#E2E2E2">
		<td>주소</td><td><%=addr %></td>
	</tr>
	<tr style="background-color:#A2A2A2">
		<td>좋아하는 운동</td>
	<td>
	<%
		for(int i=0; i<sports.length; i++){
			if(i == 0){
				out.print(sports[i]);
			}else if(i > 0 & i < sports.length){
				out.print(", " + sports[i]);
			}
			
		}
	%>
	</td></tr>
</table>
</body>
</html>