<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	// 1. 로딩
	Class.forName("org.mariadb.jdbc.Driver");
	// System.out.println("로딩 성공");
	
	// 2. 접속연결
	Connection conn = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/gdj58", "root", "java1234");
	// System.out.println(conn + "<--conn");
	
	PreparedStatement stmt = conn.prepareStatement(
			"select id,sn,category,name,startdate,enddate,memo,createdate from student order by id desc limit 0,10");
	// 출력
	ResultSet rs = stmt.executeQuery();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>studentList</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		h2{
			text-align:center;
		}
		th{
			color:white;
			font-size:20px;
		}
		body {
			height: 100vh;
		    width: 100vw;
		    background-image: url('img/listbg.jpg');
		    background-repeat : no-repeat;
		    background-size : cover;
		}
	</style>
	</head>
	<body>
		<div class="container p-2 my-2 w-50 h-25">
		<h2 class="bg-success rounded text-white">STUDENT LIST</h2>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>나이</th>
						<th>성별</th>
						<th>수강상태</th>
						<th>훈련시작날짜</th>
						<th>훈련수료날짜</th>
						<th>지원동기</th>
						<th>신청날짜</th>
					</tr>
				</thead>
				<tbody class="bg-light">
					<%
						while(rs.next()){
					%>
						<tr>
							<td><%=rs.getString("name")%></td>
							<td>
								<%
									String num=rs.getString("sn");
							
									int agenum=Integer.parseInt(num.substring(0, 2)); // 0,1
									int gendernum=Integer.parseInt(num.substring(6, 7)); // 6
									
									if(gendernum==3||gendernum==4){ // 만나이로 계산
										int age=22-agenum; // 2000년대생~ 
										out.print(age);
									}else{
										int age=2022-agenum-1900; // 1900년대생~
										out.print(age);
									}
								%>
								
							</td>
							<td>
								<%
									if(gendernum==1 || gendernum==3){ // 7번째 자리가 1,3이면 남자 / 2,4면 여자
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
							<td><%=rs.getString("category")%></td>
							<td><%=rs.getString("startdate")%></td>
							<td><%=rs.getString("enddate")%></td>
							<td><%=rs.getString("memo")%></td>
							<td><%=rs.getString("createdate")%></td>
						</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</body>
</html>