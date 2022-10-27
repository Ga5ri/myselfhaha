<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guguRequest.jsp</title>
</head>
<body>
	<%
		for(int dan=2; dan<=9; dan+=1){ // 2~9
	%>
			<a href="./guguResponse.jsp?dan=<%=dan%>"><%=dan%>단</a> <!-- a태그로 넘기는 방법 -->
	<%
		}
	%>
</body>
</html>