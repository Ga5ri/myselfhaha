<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	int pno = Integer.parseInt(request.getParameter("pno"));
	System.out.println("드라이버 로딩 성공");
	
	// 2. 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/onepiece","root","java1234");
	System.out.println(conn + " <-- conn");
	
	String sql = "delete from pirate where pno = ?"; // 쿼리문
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, pno);
	
	// delete 최종 디버깅
	int row = stmt.executeUpdate();
	if(row==1){
		System.out.println("삭제성공");
	} else {
		System.out.println("삭제실패");
	}
	
		
	
	// 삭제 후 출력이 따로 없으므로 원래 리스트 페이지로 복귀
	response.sendRedirect(request.getContextPath()+"/pirateList.jsp");
%>