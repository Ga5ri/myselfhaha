<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	
	// 안전장치
	if(request.getParameter("pname")==null
	|| request.getParameter("page")==null
	|| request.getParameter("pfruit")==null
	|| request.getParameter("phome")==null
	|| request.getParameter("pgender")==null){
		response.sendRedirect(request.getContextPath()+"/insertPirateForm.jsp");
		return;
	}
	
	// 1. 요청분석
	String name = request.getParameter("pname");
	int age = Integer.parseInt(request.getParameter("page"));
	String fruit = request.getParameter("pfruit");
	String home = request.getParameter("phome");
	String gender = request.getParameter("pgender");
	
	// 2. 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/onepiece","root","java1234");
	PreparedStatement stmt = conn.prepareStatement(
			"insert into pirate(pname,page,pfruit,phome,pgender) values(?,?,?,?,?)");
	stmt.setString(1, name); // ?와 변수를 연결, 1부터 시작함
	stmt.setInt(2, age);
	stmt.setString(3, fruit);
	stmt.setString(4, home);
	stmt.setString(5, gender);
	
	int row = stmt.executeUpdate(); // 디버깅용으로 쓰라고 int가 return 됨 꼭 int를 쓸필요는 없음
	
/*
	if(row==1){
		System.out.println("입력성공");
	} else{
		System.out.println("입력실패");
	}
*/
	
	// 3. 결과 출력
		response.sendRedirect(request.getContextPath()+"/pirateList.jsp");
%>
