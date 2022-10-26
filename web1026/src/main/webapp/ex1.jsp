<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%
	// 제어문 : 코드 위->아래로 진행되면서 실행, 기본원리다 -> 그렇지만 제어문을 만나면 1)분기(건너뛰다) 2)반복
	// 1)분기 : if..else, switch..case, try..catch..finally
	// 2)반복 : while, for(초기값; 조건식; 증감식), foreach(요소대리변수:집합) <-- foreach문은 readonly로만 사용가능
	// 제어문과 관련된 키워드 : break(탈출), continue(건너뛰어 다음으로)
	
	int x = -3; // 정수값 설정
	// if문은 등호가 올수 있으므로 부등호도 올수 있다.
	if(x>0) { // if(표현식): 표현식으로 조건분기(부등호), 값분기(등호)가 다 가능
		System.out.println("x 양수");
	} else if(x<0) { 
		System.out.println("x 음수");
	} else {
		System.out.println("0입니다");
	}
	
	int y = 6; // 정수값 설정
	int evenOdd = y%2; // 두 수를 나눈 후 나머지를 반환 -> 0,1
	
	// switch()는 괄호안에 ture or false가 아닌 값이 와야함
	switch(evenOdd){ // switch(값): 표현식 값분기
	case 0:
		System.out.println("y 짝수");
		break; // switch문 블럭을 탈출
	case 1:
		System.out.println("y 홀수");
		break;
	default:  // else문과 유사하다
		System.out.println("error!");
	}
	// swith -> if문으로(반대는 힘들수도 있다, 조건분기if문은 switch문으로 힘들다..)
	if(evenOdd == 0){
		System.out.println("y 짝수");
	} else if(evenOdd == 1){
		System.out.println("y 홀수");
	} else {
		System.out.println("error!");
	}
	
	
	// while문 - 조건에 만족할때가지 반복, 무한루프 주의!
	int z = 7; // 정수값 설정
	while(z < 10){
		System.out.println(z);
		z = z + 1;
	}
	
	// for문 - 횟수가 정해져 있을때 사용
	for(int i=0; i<3; i+=1){ // 3번 반복
		System.out.println("hello");
	}
	
	// foreach문 집합체가 있을때 사용
	String[] gdj58 = new String[3];
	gdj58[0] = "홍길동";
	gdj58[1] = "이순신";
	gdj58[2] = "강감찬";
	for(String s : gdj58) { // s변수에 요소값이 copy된 후 사용되기 때문에 s 변수를 따로 설정해줘도 소용 없음 -> 읽기전용
		System.out.println(s);
	}
	
	int a = 1;
	while(a>0) {
		System.out.println(a);
		a = a+1; // a+=1
		if(a == 17) { 
			break; // if 탈출(가장 가까운 대상에게서)
		}
	}
	
	for(int b=1; b<10; b+=1) {
		if(a==5) {
			continue;
		}
		System.out.println(b);
	}
	
%>