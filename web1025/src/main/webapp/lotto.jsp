<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 초기화
	int[] ball = new int[45];
	for(int i=0; i<ball.length; i=i+1){
		ball[i] = i+1;
	}
	/*
	for(int n : ball){
		System.out.print(n+" ");
	}
	*/
	System.out.println(""); // 줄바꿈
	
	// 2. 섞다(shuffle)
	
	for(int i=0; i<100000; i=i+1){
		int temp = ball[0];  // 0번 자리의 ball 복사
		// int r = 0; // 0~44
		int r = (int)(Math.random()*ball.length); 
		ball[0] = ball[r]; // 0번 자리에 임의의 r 카피
		ball[r]	= temp; // 임이의 r 자리에 복사된 ball 카피
	}
	/*
	for(int n : ball){
		System.out.print(n+" ");
	}
	*/
	for(int i=0; i<6; i=i+1){
		System.out.print(ball[i]+" ");
	}
%>