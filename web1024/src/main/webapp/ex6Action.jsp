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
	String paraNum = request.getParameter("num");
	int num = Integer.parseInt(paraNum);
	if(num % 2 == 0){
		out.print("짝수");
	} else {
		out.print("홀수");
	}
%>
</body>
</html>