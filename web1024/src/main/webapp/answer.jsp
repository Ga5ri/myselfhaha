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
	// 정답
	int a1 = 1;
	int a2 = 2;
	int a3 = 4;
	int a4 = 2;
	int a5 = 1;

	// 형변환
	String que1 = request.getParameter("q1");
	String que2 = request.getParameter("q2");
	String que3 = request.getParameter("q3");
	String que4 = request.getParameter("q4");
	String que5 = request.getParameter("q5");
	
	int q1 = Integer.parseInt(que1);
	int q2 = Integer.parseInt(que2);
	int q3 = Integer.parseInt(que3);
	int q4 = Integer.parseInt(que4);
	int q5 = Integer.parseInt(que5);

	// 점수배점
	int scorePerQuestion = 20;
	
	int totalScore = 0;
	
	// 답과 일치할경우
	if(q1 == a1) {
		totalScore = totalScore + scorePerQuestion;
	}
	if(q2 == a2) {
		totalScore = totalScore + scorePerQuestion;
	}
	if(q3 == a3) {
		totalScore = totalScore + scorePerQuestion;
	}
	if(q4 == a4) {
		totalScore = totalScore + scorePerQuestion;
	}
	if(q5 == a5) {
		totalScore = totalScore + scorePerQuestion;
	}
%>
	<!-- 점수합산 -->
	<div><h2>종합점수: <%=totalScore%>점</h2></div>
</body>
</html>