<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "구디아카데미";
	System.out.println(name);
	
%>
<!doctype html>

<html>
	<head></head>
	<body>
		<div>
		<%
			out.print(name);
		%>
		</div>	
	</body>
</html>