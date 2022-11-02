<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 기본API
	// JDK(자바프로그램 + JRE(라이브러리(API) + JVM)) JVM : 자바를 실행시키는 프로그램
	// 실행되는 곳에서도 JRE가 있어야(Class) 실행가능, 자바프로그램(툴킷)-> 대표적인게 컴파일러
	// 자바프로그램 실행시 JRE가 필요
	// 라이브러리 = 이미 만들어져 있는 class(데이터타입, 메서드를 갖고있는 상수) 들의 묶음
	// 기본타입을 제외한 모든 참조타입은 사용자가 만들어야함 -> API
	// 기본API => 기본 라이브러리를 사용하는 방법
	// 기본타입으로 만드는 것은 객체라 부르지 않음 ex) int x
	// 오브젝트 타입은 어떤 타입도 들어올 수 있다.
	Calendar today = Calendar.getInstance();
	out.print(today);
	
	int todayYear = today.get(Calendar.YEAR); // Calendar.YEAR static 필드(멤버변수)
	int todayMonth = today.get(Calendar.MONTH);
	int todayDate = today.get(Calendar.DATE); // 오늘 날짜
	//요일
	int todayDay = today.get(Calendar.DAY_OF_WEEK);
	String todayDayStr = null;
	switch(todayDay){
	case 1:
		todayDayStr="일요일";
		break;
	case 2:
		todayDayStr="월요일";
		break;
	case 3:
		todayDayStr="화요일";
		break;
	case 4:
		todayDayStr="수요일";
		break;
	case 5:
		todayDayStr="목요일";
		break;
	case 6:
		todayDayStr="금요일";
		break;
	case 7:
		todayDayStr="토요일";
		break;
	}
	
	Calendar xmas = Calendar.getInstance();
	// 2022-12-25 로 변경
	xmas.set(Calendar.YEAR, 2022);
	xmas.set(Calendar.MONTH, 11);
	xmas.set(Calendar.DATE, 25);
	
%>
	<h2>오늘</h2>
	<div>년도 : <%=todayYear%></div>
	<div>월 : <%=todayMonth + 1%></div>
	<div>일 : <%=todayDate%></div>
	<div>요일 : <%=todayDayStr%></div>
	<div>이번달의 마지막 날짜 : <%=today.getActualMaximum(Calendar.DATE)%></div>
	
	<h2>xmas</h2>
	<div>년도 : <%=xmas.get(Calendar.YEAR)%></div>
	<div>월 : <%=xmas.get(Calendar.MONTH)+1%></div>
	<div>일 : <%=xmas.get(Calendar.DATE)%></div>
	<div>요일 : <%=xmas.get(Calendar.DAY_OF_WEEK)%><span>1:일, .... 7:토</span></div>
	<div>크리스마스 달의 마지막 날짜 : <%=xmas.getActualMaximum(Calendar.DATE)%></div>
</body>
</html>