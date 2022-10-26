<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paperForm</title>
	<style>
		.b1 {background-color:lightgray;}
	</style>
</head>
<body>
	<h1>K POP 온라인 시험2</h1>
	<h2>1~5번 : 보기에서 고르시오</h2>
	<h3>보기</h3>
	<table>
		<tr><!-- 보기 내용 -->
			<td class="b1">
				RM, 진, 슈가, 제이홉, 지민, 뷔, 정국, 지수, 제니, 로제, 리사
				<br>
				이특, 희철, 예성, 신동, 은혁, 동해, 시원, 려욱, 규현, 성민
				<br>
				나연, 정연, 모모, 사나, 지효, 미나, 다현, 채영, 쯔위, 청하
			</td>
		</tr>
	</table>
	<br>
	<form action="./paperAction.jsp" method="post">
		<div>
			<!-- 문제 1 -->
			<div>1. BTS 리더를 보기에서 고르시오.</div>
			<div><input type="text" name="question" value=""></div>
			
			<!-- 문제 2 -->
			<div>2. 블랙핑크의 외국인 멤버를 고르시오.</div>
			<div><input type="text" name="question" value=""></div>
			
			<!-- 문제 3 -->
			<div>3. 슈퍼주니어의 리더를 보기에서 고르시오.</div>
			<div><input type="text" name="question" value=""></div>
			
			<!-- 문제 4 -->
			<div>4. 트와이스의 리더를 보기에서 고르시오.</div>
			<div><input type="text" name="question" value=""></div>
			
			<!-- 문제 5 -->
			<div>5. 솔로 여자가수를 보기에서 고르시오.</div>
			<div><input type="text" name="question" value=""></div>
		</div>
		<button type="submit">답안제출</button>
	</form>
</body>
</html>