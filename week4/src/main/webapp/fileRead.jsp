<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>절대 경로를 이용한 파일 읽기</h3>
	
<%
	String path = "/Users/juhoonlee/Desktop/2-2/2-2_JSP/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/week4/test.txt";	

	BufferedReader br = new BufferedReader(new FileReader(path));
	
	while(true){
		String str = br.readLine();
			if (str == null){
				break;
			}
		out.println(str + "<br>");
	}
	br.close();
%>
</body>
</html>