<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FileReader reader = null;
	String path = request.getParameter("path");
	reader = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
	소스 코드 = <%=path %>
	<c:out value="<%=reader %>" escapeXml="true"/>
</pre>
<%
	if(reader != null){
		reader.close();
	}
%>
</body>
</html>