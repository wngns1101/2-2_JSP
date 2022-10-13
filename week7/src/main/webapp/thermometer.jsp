<%@page import="week7.Thermometer"%>
<%@page import="week7.FormatUtil"%>
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
	Thermometer thermometer = new Thermometer();
	request.setAttribute("th", thermometer);
%>

	<h3>온도 변환 예제</h3>
	${th.setCelsius("서울", 27.3)}
	서울 온도: 섭씨${th.getCelsius("서울") }도 / 화씨 ${th.getFahrenheit("서울") }<br>
	정보: ${th.getInfo() }
	<hr>
	가격은 <b>${FormatUtil.number(123456, "#,##0")}</b>원 입니다.
</body>
</html>