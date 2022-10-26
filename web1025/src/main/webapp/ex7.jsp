<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	int[] arr = new int[5];
	arr[0] = 7;
	arr[1] = 17;
	arr[2] = 77;
	arr[3] = 10;
	arr[4] = 12;
	System.out.println(arr); // 참조값
	System.out.println(arr[3]); // 10
	System.out.println(arr.length); //5
	
	for(int i=0; i<arr.length; i=i+1){ // 배열이 int[5] 에서 int[6] 으로 바뀌면 for문도 바뀌어야함 따라서, arr.length 사용하여 유지보수 용이하게 설정
		System.out.println(arr[i]);
	}
%>