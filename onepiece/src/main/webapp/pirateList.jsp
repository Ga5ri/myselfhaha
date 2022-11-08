<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%
	// 1. 드라이버 로딩
	Class.forName("org.mariadb.jdbc.Driver");
	System.out.println("로딩 성공");
	
	// 2. 접속 연결
	Connection conn = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/onepiece","root","java1234");
	System.out.println(conn + " <-- conn");
	
	// conn(데이터베이스접속), 접속한 데이터베이스에 쿼리를 만들때 사용하는 메서드:prepareStatement
	PreparedStatement stmt = conn.prepareStatement( 
			"select pno, pname, page, pfruit, phome, pgender from pirate order by pno desc limit 0, 20"); // 쿼리를 실행할때 사용하는 메서드
	ResultSet rs = stmt.executeQuery(); // 출력
%>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
		<style>
			th, td, h2 {
				text-align : center;
			}
			body {
				height: 100vh;
		        width: 100vw;
		        background-image: url('img/pirate.jpg');
		        background-repeat : no-repeat;
		        background-size : cover;
			}
		</style>
		<meta charset="UTF-8">
		<title>pirateList</title>
	</head>
	<body>
	<div class="container p-2 my-2 w-50 h-25">
		<h2 class="bg-success rounded text-white">ONEPIECE</h2>
		<table class="table table-hover text-white">
			<thead>
				<tr>
					<th>P.NO</th>
					<th>P.NAME</th>
					<th>P.AGE</th>
					<th>P.FRUIT</th>
					<th>P.HOME</th>
					<th>P.GENDER</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody class="bg-light text-success">
				<%
					while(rs.next()){ // next 값이 false 나올때까지 실행
				%>
						<tr>
							<td><%=rs.getInt("pno")%></td>
							<td><%=rs.getString("pname")%></td>
							<td><%=rs.getInt("page")%></td>
							<td>
							<%
								if(rs.getString("pfruit").equals("Y")){
							%>
									<span>&#127826;</span>
							<%	
								} else {
							%>
									<span>&#10060;</span>
							<% 		
								}
							%>
							</td>
							<td><%=rs.getString("phome")%></td>
							<td>
							<%
								if(rs.getString("pgender").equals("남")){
							%>
									<span>&#128102;</span>
							<%
								} else {
							%>
									<span>&#128103;</span>
							<%		
								}
							%>
							</td>
							<td>
								<a href="<%=request.getContextPath()%>/updatePirateForm.jsp?pno=<%=rs.getInt("pno")%>">
									수정
								</a>
							</td>
							<td>
								<a href="<%=request.getContextPath()%>/deletePirate.jsp?pno=<%=rs.getInt("pno")%>">
									삭제
								</a>
							</td>
						</tr>
				<%		
					}
				%>
			</tbody>
		</table>
	
	</div>
	</body>
</html>