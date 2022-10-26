<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sendForm</title>
</head>
<% // form방식은 그때 그때 원하는 것을 보낼 수 있다 %>
<body>
	<form action="./receiveForm.jsp" method="post">
		이름 :
		<input type="text" name="nick" value="">
		<button type="submit">전송</button>
	</form>
</body>
</html>
