<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%
	// 1. bootstrap 입히기
	// 2. tr 추가 -> 일월화수목금토 한줄 더 만들기
	// 3. 토요일은 파란색, 일요일은 빨간색 (숫자값)
	
	int year = 0;
	int month = 0; // 0~11
	// 년도, 월 중 하나라도 지정되지(넘겨져 오지)않으면 오늘날짜 기준으로 월달력 출력
	if(request.getParameter("year") == null || request.getParameter("month") == null){
		Calendar today = Calendar.getInstance();
		year = today.get(Calendar.YEAR);
		month = today.get(Calendar.MONTH);
	} else {
		// 출력하고자 하는 달력의 년도와 월 
		year = Integer.parseInt(request.getParameter("year")); // 2022~
		month = Integer.parseInt(request.getParameter("month")); // 0~11
		
		// 이전달 클릭 year, month-1 / 다음달 클릭 year, month+1
		// 1월 이전달 클릭시 0-1=-1, 12월 다음달 클릭시 11+1=12 발생 / -1 -> 11,year-- / 12 -> 0,year++
		if(month == -1){
			month = 11;
			year--;
		}
		if(month == 12){
			month = 0;
			year++;
		}
	}
	// 출력하고자 하는 달의 1일 객체 데이터 + 1일 요일 + 마지막 날짜
	Calendar firstDate = Calendar.getInstance();
	firstDate.set(Calendar.YEAR, year);
	firstDate.set(Calendar.MONTH, month);
	firstDate.set(Calendar.DATE, 1);
	int firstDay = firstDate.get(Calendar.DAY_OF_WEEK); // 1일의 요일 정보(1일, 2월, 3화...7토)
	int lastDate = firstDate.getActualMaximum(Calendar.DATE);
	
	// 출력 알고리즘(td의 개수 구하기)
	int startBlankCnt = firstDay - 1;
	int endBlankCnt = 0;
	if((startBlankCnt + lastDate)%7 !=0){
		endBlankCnt = 7 - (startBlankCnt + lastDate)%7;
	}
	int tdCnt = startBlankCnt + lastDate + endBlankCnt; // 35
%>
<!DOCTYPE html>
<html>
<head>
<!-- boot strap version.5 -->
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	h2 {
		text-align: center;
	}
	a {
		text-decoration: none;
	}
</style>
<meta charset="UTF-8">
<title>달력</title>
</head>
<body>
	<div class="container">
		<div class="bg-warning text-black rounded">
		<h1>
		<span>
			<a href="<%=request.getContextPath()%>/myCalendar.jsp?year=<%=year%>&month=<%=month-1%>">[이전달]</a>
		</span>
		<span><%=year%>년 <%=month+1%>월</span>
		<span>
			<a href="<%=request.getContextPath()%>/myCalendar.jsp?year=<%=year%>&month=<%=month+1%>">[다음달]</a>
		</span>
		</h1>
		</div>
	</div>
	
	<table class="table table-bordered table-hover">
		<tr>
			<td style="color:red">일요일</td>
			<td>월요일</td>
			<td>화요일</td>
			<td>수요일</td>
			<td>목요일</td>
			<td>금요일</td>
			<td style="color:blue">토요일</td>
		</tr>
		<tr>
			<% // 1,8,15,22,29
				for(int i=1; i<=tdCnt; i++){
					if(i%7 == 0){
			%>
						<td class="text-danger">
			<%			
					} else if(i%7 == 1){
			%>
						<td class="text-primary">

			<%			
					} else {
			%>
						<td>
			<%			
					}
			%>
					<td>
						<%
							if((i-startBlankCnt)>0 && (i-startBlankCnt<=lastDate)){
						%>
							 <%=i-startBlankCnt%>
						<%	
							// System.out.print(i-startBlankCnt+" ");
							} else {
						%>
								&nbsp;
						<%		
							}
						%>
					</td>
			<%		
				if(i != tdCnt && i%7 == 0){
			%>
					</tr><tr>
			<%		
					}
				}
			%>
		</tr>
	</table>
</body>
</html>