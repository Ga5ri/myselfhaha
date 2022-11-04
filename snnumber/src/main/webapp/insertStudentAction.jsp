<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	
// 안전장치
	if(request.getParameter("name")==null
	|| request.getParameter("sn")==null
	|| request.getParameter("category")==null
	|| request.getParameter("startdate")==null
	|| request.getParameter("enddate")==null
	|| request.getParameter("memo")==null){
		response.sendRedirect(request.getContextPath()+"/insertStudentForm.jsp");
		return;
}

	// 1. 요청분석
	String name = request.getParameter("name");
	String sn = request.getParameter("sn");
	String category = request.getParameter("category");
	String startdate = request.getParameter("startdate");
	String enddate = request.getParameter("enddate");
	String memo = request.getParameter("memo");
	
	// 2.요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/gdj58","root","java1234");
	PreparedStatement stmt = conn.prepareStatement(
			"insert into student(name,sn,category,startdate,enddate,memo,createdate) values(?,?,?,?,?,?,curdate())");
	// ?와 변수를 연결, 1부터 시작함
	stmt.setString(1, name);
	stmt.setString(2, sn);
	stmt.setString(3, category);
	stmt.setString(4, startdate);
	stmt.setString(5, enddate);
	stmt.setString(6, memo);
	stmt.executeUpdate();
	
	
	/*
	if(row==1){
		System.out.println("입력성공");
	} else{
		System.out.println("입력실패");
	}
	*/
	
	response.sendRedirect(request.getContextPath()+"/studentList.jsp");
%>