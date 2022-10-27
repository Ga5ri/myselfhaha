<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	requset.getParameter("dan");
	Integer.parseInt();
	*/

	int dan = Integer.parseInt(request.getParameter("dan")); // method가 스트링 타입이므로 간소화하기 위해 괄호안에 입력
	
	// if dan2,3,....9
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guguResponse.jsp</title>
</head>
<body>
	<h1><%=dan%>단</h1>
	<table>
	<%
		for(int i=1; i<10; i+=1){ // 1~9
	%>
		<tr>
			<!-- 구구단 n단의 식 -->
			<td><%=dan%>*<%=i%></td>
			<td>= <%=dan*i%></td>
		</tr>
	<%
		}
	%>	
	</table>
</body>
</html>