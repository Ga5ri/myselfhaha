
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>블랙잭 게임</h1>
	<div>
		<!-- 절대상대주소, 절대주소는 http 포함 getContextPath 메서드는 프로젝트명이 바뀌어도 알아서 호출 -->
		<img src="<%=request.getContextPath()%>/img/cardback.png">
	</div>
	<div>
		<form method="post" action="<%=request.getContextPath()%>/cardPlayAction.jsp">
			<input type="radio" name="playerCount" value="2">2명
			<input type="radio" name="playerCount" value="3">3명
			<input type="radio" name="playerCount" value="4">4명
			<button type="submit">게임시작</button>
		</form>
	</div>
</body>
</html>