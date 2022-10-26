<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 조건문 : 블럭안의 코드를 실행 or 실행X
	// 반복문 : 블럭안의 코드를 몇번 실행
	
	// foreach문 : 몇번? 제공되는 집합의 길이(개수)
			
	// for문, while문 : 몇번? 조건에 만족할때 까지
	
	for(int i=0; i<5; i=i+1){  // 초기식, 조건식, 증감식, i=i+1 -> i++, ++i, i+=1
		// System.out.println(i); 5번실행 0,1,2,3,4
	}

	for(int a=0; a<3; a=a+1) {
		System.out.print(a + " "); // 슷지(실수,정수)를 문자열 -> 숫자를 문자열로 변경 연산한다 1+"test" -> "1"+"test" --> "1test"
	}

	for(int i=10; i>0; i=i-1){
		System.out.print(i+" "); // 무엇이? 보다 몇번이 중요!
	}
%>