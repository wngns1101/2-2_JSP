<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
	<h3> 요청 파라미터 출력</h3>
	<h4 style="red">request.getParameter()매서드 사용</h4>
	name 파라미터 = <%=request.getParameter("name") %>,
	addr 파라미터 <%=request.getParameter("addr") %>
	
	<h4 style="red">request.getParameterValues()매서드 사용</h4>
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null){
			for (int i=0; i<values.length; i++){
				out.println(values[i]);
			}
		}
	%><p>
	
	<h4 style="red">request.getParameterNames()매서드 사용</h4>
	<%
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
			out.println(name);
		}
	%><p>
	<h4 style="red">request.getParameterMap()매서드 사용</h4>
	<%
		Map paramMap = request.getParameterMap();
		String[] nameParam = (String[])paramMap.get("pet");
		if(nameParam != null){
			out.println(nameParam[1]);
		}
	%>
</body>
</html>