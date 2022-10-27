<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import = "vo.Student" %> <!-- 소스코드 내에서 Student는 vo.Student를 가리킴 -->
<%
	vo.Student ks = null; // 객체변수, 참조변수 라 부름
	ks = new vo.Student(); // 객체생성, 참조객체생성 new 연산자는 객체를 초기화 시킴, 타입에 따라 초기화 종류는 다양 ex)0,false... -> 참조값(위치값)이 대입된다.
	
	// 배열은 arr[0]으로 호출하며 ks.name=''; 
	ks.name = "김설";
	ks.age = 29;
	ks.gender = "여자";
	ks.isJob = false;
	
	System.out.println(ks);
	System.out.println(ks.name);	// .: 객체참조연산자, []: 배열참조연산자 ex) 변수이름,...
%>