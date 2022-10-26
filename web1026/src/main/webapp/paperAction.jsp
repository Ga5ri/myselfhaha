<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글로된 jsp 파일을 받기위한 코드
	request.setCharacterEncoding("utf-8");
	
	// 사용자가 제출한 답변 설정
	String[] question = request.getParameterValues("question");
	System.out.println(question.length+"<--question.length"); // 5 디버깅
	
	// 정답 설정
	String[] answer = {"RM","리사","이특","지효","청하"};
	
	// 채점 변수값 설정(config 설정) 만점:100점
	int fullScore = 100;
	int scorePerQuestion = 0;
	
	// 100점 만점 기준으로 문제당 점수 산출
	if(fullScore % answer.length != 0){
		System.out.println("문제 수 셋팅이 잘못됬습니다.");
	} else {
		scorePerQuestion = fullScore / answer.length;
		System.out.println(scorePerQuestion +"<--scorePerQuestion");
	}
	
	int totalScore = 0;

	
	// 채점 알고리즘
	for(int i=0; i<answer.length; i+=1){ // i=i+1, i++
		if(question[i].equals(answer[i])){ //question[0].equals(answer[0]) == true
			totalScore = totalScore + scorePerQuestion; // totalScore += scorePerQuestion
		}
	}
	
	System.out.println(totalScore+"<--totalScore");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paperAction</title>
</head>
<body>
	<div>
		<h1>점수</h1>
		<div>
			<%
				for(int i=10; i<=totalScore; i=i+10){ // i+=10
				
			%>
					&#11088;
			<%
				}
			%>
			<span>(<%=totalScore%> 점)</span>
		</div>
	</div>
</body>
</html>
