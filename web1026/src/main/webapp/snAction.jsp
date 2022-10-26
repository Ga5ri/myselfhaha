<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String sn = request.getParameter("sn1")+request.getParameter("sn2");
	/* 
 	if(sn.length() != 13){
 		System.out.println("잘못된 주민번호");
 	} else {
 		// 코드..
 	}
 	*/
 	
 	if(sn.length() != 13){
 		System.out.println(sn+"는(은) 잘못된 주민번호입니다.");
 		return;
 	}
 	
 	// 코드
 	// 1) 7번째 문자를 호출하는 방법 substring() (6,9) -> 6,7,8 
	// String -> int 형변환 genderChar -> genderNum
	
	String genderChar = sn.substring(6, 7);
 	System.out.println(genderChar+"<--ganderChar");
 	int genderNum = Integer.parseInt(genderChar);
 	System.out.println(genderNum+"<--genderNum");
 	
 	/*
 	String gender = "남자";      코드 줄이는 방법 애초에 남자를 설정해두고 여자일경우 여자로 수정
 	if(genderNum % 2 == 0){
 		gender = "여자";
 	}
 	*/
 	
 	String gender = "";
 	if(genderNum % 2 == 0){
 		gender = "여자";
 	} else {
 		gender = "남자";
 	}
 	System.out.println(gender+"<--gender");
 	
 	// 나이 구하는 알고리즘
 	// 참조 타입(java.util.Calender) getInstance(날짜)-> 날짜값(시간,요일 등등 종합적으로)이 today로 들어감
 	java.util.Calendar today = java.util.Calendar.getInstance(); // 오늘 날짜 정보를 리턴
 	int todayYear = today.get(java.util.Calendar.YEAR); // 오늘 날짜의 년도 리턴, YEAR->2022
	
 	//생일 년도 구하기
 	int birthYear = 0;
 	String birthStr = sn.substring(0, 2);
 	// 생일 년도 앞 2자리 구하기 <-- genderNum 이용
	if(genderNum == 0 || genderNum == 9){
		System.out.println("error");
	} else if(genderNum == 1 || genderNum == 2 || genderNum == 5 || genderNum == 6) {
		birthYear = Integer.parseInt("19"+birthStr);
	} else {
		birthYear = Integer.parseInt("20"+birthStr);
	}
 	// 오늘 년도에서 생일 년도를 빼면 나이가 나옴
 	int age = todayYear - birthYear;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>성별 : <%=gender%></div>
    <div>나이 : <%=age%></div>
	
</body>
</html>