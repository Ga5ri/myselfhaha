<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	// 1.요청분석
	request.setCharacterEncoding("utf-8");
	int pno = Integer.parseInt(request.getParameter("pno"));
	System.out.println("드라이버 로딩 성공");
	
	// 2.요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/onepiece","root","java1234");
	System.out.println(conn + " <-- conn");
	String sql = "select pname, page, pfruit, phome, pgender from pirate where pno = ?"; // 쿼리문
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, pno);
	ResultSet rs = stmt.executeQuery(); // 0행 or 1행
	
	String pname = null;
	int age = 0;
	String pfruit = null;
	String phome = null;
	String pgender = null;
	if(rs.next()){
		pname = rs.getString("pname");
		age = rs.getInt("age");
		pfruit = rs.getString("pfruit");
		phome = rs.getString("phome");
		pgender = rs.getString("pgender");
	}
	
	// 3. 출력
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/updatePirateAction.jsp">
		<table>
			<tr>
				<td>P.NO</td>
				<td><input type="text" name="pno" value="<%=pno%>" readonly="readonly"></td>
			</tr>	
			<tr>
				<td>P.NAME</td>
				<td><input type="text" name="pname" value="<%=pname%>"></td>
			</tr>
			<tr>
				<td>P.AGE</td>
				<td><input type="text" name="page" value="<%=age%>"></td>
			</tr>
			<tr>
				<td>P.FRUIT</td>
				<td>
					<input type="radio" name="pfruit" value="Y">Y
					<input type="radio" name="pfruit" value="N">N
				</td>
			</tr>
			<tr>
				<td>P.HOME</td>
				<td><input type="text" name="phome" value="<%=phome%>"></td>
			</tr>
			<tr>
				<td>P.GENDER</td>
				<td>
					<input type="radio" name="pgender" value="남자">남자
					<input type="radio" name="pgender" value="여자">여자
				</td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>