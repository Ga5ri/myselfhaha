<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 숫자연산자 +, -, *, /, % -->
<%
	int x = 0;
	x = 7+2; // 9
%>
	<div>x(7+2) : <span><%=x%></span></div>
<%
	x = 7-2; // 5
%>
	<div>x(7-2) : <span><%=x%></span></div>
<%
	x = 7*2; // 14
%>
	<div>x(7*2) : <span><%=x%></span></div>
<%
	x = 7/2; // 3
%>
	<div>x(7/2) : <span><%=x%></span></div>
<%
	x = 7%2; // 1
%>
	<div>x(7%2) : <span><%=x%></span></div>
<%
	double y = 0;  // 7.0/2 ---> 7.0/(double)2
	y = 7.0 / 2.0; // 3.5
%>
	<div>y : <span><%=y%></span></div>
	

<%
	int score = 5;
	if(score > 9) {
		out.print("A");
	} else if(score > 8) {
		out.print("B");
	} else if(score > 7) {
		out.print("C");
	}
%>
</body>
</html>