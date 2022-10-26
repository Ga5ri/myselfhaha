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
		System.out.print("구디"); // console 출력
		System.out.println("아카데미"); // console 출력 + 줄바꿈
	%>
	<h1>
		<% 
			out.print("GDJ58기"); 
		%>
	</h1>
	<h1><%="GDJ58기"%></h1>
	
	<%
		String name = "박성환";
	%>
	
	<h2><% out.print(name); %></h2>
	<h2><%=name%></h2>
</body>
</html>