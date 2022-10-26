<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 참조타입(String, 배열, Class)
	// String
	
	String str = null; // 메모리의 0번지를 가리킴
	str = "구디"; // "구디"는 값이 아니기 때문에(식이다) 식을 해석하면 참조값으로 해석된다
	System.out.println(str); // str참조값이 출력되어야 하지만 String은 참조가 가리키는 문자열값이 출력되도록 장치가 되어있다
	
	System.out.println(str.hashCode()); // 참조값과 가장 유사한값, 참조값이라고 생각하자 참조값을 출력하고 싶을때 사용하는 -> 해쉬코드
	
	// 배열 참조타입
	
	int [] arr = {2, 7, 10,}; // {2, 7, 10} <-- 배열식(값이 아닌것들은 모두 식)
	System.out.println(arr);
	System.out.println(arr[1]); // 배열 참조 연산자 arr.0(참조 연산자)    0 -> 2, 1 -> 7, 2 -> 10	
	// System.out.println(arr[3]); 배열길이를 초과하여 예외(에러의 한 종류)가 발생하는 코드
	
	int[] arr2 = new int[4]; // new int[4] <-- new연산자식(객체를 만들때 사용)
	System.out.println(arr2);
	System.out.println(arr[2]);	// new연산자는 객체를 생성할대 각각의 객체멤버변수의 값을 초기화
	
	arr2[0] = 7;
	arr2[1] = 3;
	arr2[2] = 100;
	arr2[3] = 50;
	// arr2[4] = 11; -> 배열길이를 초과하여 예외(에러의 한 종류)가 발생하는 코드
	
	System.out.println(arr2[2]); // 100
%>