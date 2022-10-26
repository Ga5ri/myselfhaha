<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leaderForm.jsp</title>
</head>
<body>
	<form method="post" action="./leaderAction.jsp">
		<h2>나의 팀장은?</h2>
		<div>
			번호입력 : <input type="number" name="num">
		</div>
		<button type="submit">팀장찾기</button>
	</form>
</body>
</html>