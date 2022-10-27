<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.Student"%> <!-- class 풀네임을 줄여서 사용하기 위해서 import사용 Student로 줄여짐 -->
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String paramIsJob = request.getParameter("isJob"); // boolean 값 설정 false로 기본값 설정했으니 실업자면 false 재직자면 true
	boolean isJob = false;
	if(paramIsJob.equals("재직자")){
		isJob = true;
	}
	
	// 초기화설정1 Student student = new Student();
	 
	Student student = null; // 초기화 설정 정석
	student = new Student(); // 생성자 매서드() -> 데이터타입과 똑같은 생성자
	student.name = name;
	student.age = age;
	student.gender = gender;
	student.isJob = isJob;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentAction</title>
<style>
	table, td {
		border : 1px solid pink;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>이름</td>
			<td><%=student.name%></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=student.age%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=student.gender%></td>
		</tr>
		<tr>
			<td>취업</td>
			<td>
				<%
					if(student.isJob==true){
				%>
						<span>재직자</span>
				<%		
					} else {
				%>
						<span>실업자</span>
				<%		
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>