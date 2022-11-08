<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	// 1. 요청분석
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int age = Integer.parseInt(request.getParameter("page"));
	String pfruit = request.getParameter("pfruit");
	String phome = request.getParameter("phome");
	String pgender = request.getParameter("pgender");
	System.out.println("드라이버 로딩 성공");
	
	// 2. 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/onepiece","root","java1234");
	System.out.println(conn + "<--conn");
	
	String sql = "update pirate set pname=?, page=?, pfruit=?, phome=?, pgender=? where pno=?"; // 쿼리문
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, pname);
	stmt.setInt(2, age);
	stmt.setString(3, pfruit);
	stmt.setString(4, phome);
	stmt.setString(5, pgender);
	stmt.setInt(6, pno);
	
	//삭제 디버깅
	int row = stmt.executeUpdate();
	if(row==1){
		System.out.println("수정성공");
	} else {
		System.out.println("수정실패");
	}
	
	response.sendRedirect(request.getContextPath()+"/pirateList.jsp");
%>