<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.currentTime{
		text-align:center;
	}
	.copyright{
		text-align:center;
	}
	h3{
		text-align:center;
	}
</style>
<body>
	<table width="100%">
		<tr>
			<td height="30px" style="background-color:black;">
				<jsp:include page="menu.jsp"></jsp:include>
			</td>	
		</tr>
		<tr>
			<td height="300px" style="background-color:lightgrey; text-align: center;">
				<h1>웹 쇼핑몰에 오신 것을 환영합니다</h1>
			</td>
		</tr>
		<tr>
			<td>
				<h3> Welcome to Web Market!</h3>
					<%
						Date date = new Date();
						SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
						String time = sdf.format(date);
						Calendar cal = Calendar.getInstance();
						String str = cal.get(Calendar.YEAR) + "년 " + cal.get(Calendar.MONTH) + "월" + cal.get(Calendar.DATE) + "일 " + time;
					%>
					<div class="currentTime">
						<a>현재 접속 시간:  <%= str %></a>
					</div>
				<hr>
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="footer.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>