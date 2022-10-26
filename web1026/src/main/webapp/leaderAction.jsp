<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num"); // String -> int 형변환
	int i = Integer.parseInt(num);
	
	String leader = ""; // 팀장 설정

	if(i>90){ // 91~100
		leader="91";		
	} else if(i>80) { // 81~90
		leader="81";
	} else if(i>70) { // 71~80
		leader="71";
	} else if(i>60) { // 61~70
		leader="61";
	} else if(i>50) { // 51~60
		leader="51";
	} else if(i>40) { // 41~50
		leader="41";
	} else if(i>30) { // 31~40
		leader="31";
	} else if(i>20) { // 21~30
		leader="21";
	} else if(i>10) { // 11~20
		leader="11";
	} else { // 그외
		leader="1";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>팀장을 찾아라</h2>
	<div>
		당신의 팀장은 <%=leader%> 입니다
	</div>
</body>
</html>