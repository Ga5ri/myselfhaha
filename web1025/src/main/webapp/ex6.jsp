<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1부터 10까지 출력
	for(int i=0; i<10; i=i+1) { // 컴퓨터가 읽기 편한 코드
		System.out.println(i+1);
	}

	for(int i=1; i<=10; i=i+1) { // 사람이 읽기 편한 코드
		System.out.println(i);
	}
	
	for(int i=1; i<11; i=i+1) {
		System.out.println(i);
	}
	
	// 1부터 10까지 짝수만 출력
	for(int i=0; i<10; i=i+2) {  // 잘못된 표현, 10번 반복되지 않는다.
		System.out.println(i);
	}
	
	for(int i=1; i<=10; i=i+1) { // 짝수가 출력되는 올바른 코드
		if(i%2 == 0){
			System.out.println(i);
		}
	}
	// 1부터 10까지 홀수만 출력
	for(int i=1; i<=10; i=i+1){
		if(i%2 == 1){
			System.out.println(i);
		}
	}
	
	// 1부터 10까지 합
	int sum = 0;
	for(int i=1; i<=10; i=i+1){
		sum = sum + i; // -> 같은표현 : sum+=i;
	}
	System.out.println("sum: " + sum);
	
	// for중첩
	for(int i=0; i<3; i=i+1){ // 3번
		for(int j=0; j<3; j=j+1){ // 3번
			System.out.println("실행");
		}
	}
	
	// 012012012
	for(int i=0; i<3; i=i+1){ // 3번 
		for(int j=0; j<3; j=j+1){ // 012
			System.out.println(j);
		}	
	}
	
	for(int i=0; i<10; i=i+1){
		System.out.println(i%3);
	}
%>