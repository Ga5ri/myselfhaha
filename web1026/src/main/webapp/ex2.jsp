<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 1. 산술연산자를 사용하여 구현하라. 1번부터 100번까지의 학생이 있다. 1번부터 10번까지, 11번부터 20번까지,....10명씩 한팀이고 각팀이 1번, 11번, 21번이 팀장이다.  한 학생의 번호를 이용하여 그팀의 팀장번호를 구하는 프로그램을 구현하라.(ex : 8번 학생의 팀장번호는 1번, 15번 학생의 팀장번호는 11번이 된다)
// 2. if~else문을 사용하여 홀짝수를 구별하는 프로그램을 구현하라.
	int num = 15; // 정수값 설정

	if(num%2==0){ // 나머지가 0이면 짝수 그외에는 홀수
		System.out.println("짝수");
	} else {
		System.out.println("홀수");
	}

	// 3. if~else if~else문을 사용하여 양수, 음수, 0 을 구별하는 프로그램을 구현하라.
	int a = 3; // 정수값 설정
	
	if(a<0){
		System.out.println("음수");
	} else if(a>0){
		System.out.println("양수");
	} else {
		System.out.println("0");
	}
	
	// 4. 20대만 출입이 가능한 곳이 있다. 두명의 나이가 모두 20대이면 출입, 아니면 출입금지를 출력하는 프로그램을 구현하라.(if~else, 산술연산자, 논리연산자 사용)
	int oneAge = 21;
	int twoAge = 27;
	
	if(oneAge>19 && twoAge>19){ // one,twoAge 값이 모두 19 초과일 경우에만 출입
		System.out.println("출입");
	} else {
		System.out.println("출입금지");
	}
	
	// 5. 1~50까지의 수에서 5의배수만 출력하는 프로그램을 구현하라.(for, if, %연산자 사용)
	for(int i=1; i<=50; i=i+1){ // 1~50까지 수에서
		if(i%5==0){ // 5의 배수일때만 출력
			System.out.println(i);
		}
	}
	
	// 6. 1~10까지의 수에서 홀수의 합을 출력하는 프로그램을 구현하라.(for, if, %연산자 사용)
	int sum = 0; // 초기값 설정
	for(int i=1; i<=10; i=i+1){ // 1~10까지
		if(i%2==1){ // 홀수값 출력
			sum = sum + i;
		}
	}
	System.out.println(sum);
	
	/* 7. for, if문등을 사용하여 2014년에서 2500년 사이의 윤년을 출력하는 프로그램을 구현하라.
	   다음의 경우가 윤년이다.
	   ① 400로 나누어 떨어지는 해
	   ② 4로 나누어 떨어지지만 100으로는 나누어 떨어지지 않는 해 */
	
	for(int i=2014; i<=2500; i=i+1){
		if(i%400==0 || (i%4==0 && i%100!=0)){ // 1,2항의 해당하는 조건
			System.out.println("윤년: "+i);
		}
	}

		
	//
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>