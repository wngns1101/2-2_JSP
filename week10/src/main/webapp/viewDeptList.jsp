<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<table border="1" width="100%" style="text-align:center;">
		<tr>
			<th>부서코드</th>
			<th>부서이름</th>
			<th>근무지</th>
		</tr>	
		<%
			Statement stat = null;
			ResultSet rs = null;
			stat = conn.createStatement();
			String sql = "select * from dept";
			rs = stat.executeQuery(sql);
			
			while(rs.next()){
				String deptNo = rs.getString("deptNo");
				String deptName = rs.getString("deptName");
				String deptLoc = rs.getString("deptLoc");
		%>
			<tr>
				<td><%=deptNo %></td><td><%=deptName %></td><td><%=deptLoc %></td>
			</tr>
		<%
			}
			rs.close();
			stat.close();
			conn.close();
		%>
	</table>
</body>
</html>