<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>receiveSign</title>
</head>
<body>
	<h1>receiveSign</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String id = request.getParameter("id");
				%>
				<div><%=id%></div>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String pw = request.getParameter("pw");
				%>
				<div><%=pw%></div>
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String name = request.getParameter("name");
				%>
				<div><%=name%></div>
			</td>
		</tr>
		<tr>
			<td>생일</td>
			<td>
			<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String birth = request.getParameter("birth");
				%>
				<div><%=birth%></div>
			</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String age = request.getParameter("age");
				%>
				<div><%=age%></div>
			</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String gender = request.getParameter("gender");
				%>
				<div><%=gender%></div>
			</td>
		</tr>
		<tr>
			<td>메일</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String mail1 = request.getParameter("mail1");
				%>
				<div><%=mail1%>@</div>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String mail2 = request.getParameter("mail2");
				%>
				<div><%=mail2%></div>
			</td>
		</tr>
		<tr>
			<td>메모</td>
			<td>
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<%
					String memo = request.getParameter("memo");
				%>
				<div><%=memo%></div>
			</td>
		</tr>
	</table>
</body>
</html>