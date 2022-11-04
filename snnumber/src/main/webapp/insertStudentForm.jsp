<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertStudentForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<style>
	table, td {
  		border: 1px solid black;
 	}
 	.t1, h2 {
 		text-align:center;
 	}
	body {
		height: 100vh;
	    width: 100vw;
	    background-image: url('img/loginbg.jpg');
	    background-repeat : no-repeat;
	    background-size : cover;
		}
 	</style>
</head>
<body>
	<div class="container p-2 my-2 w-25 h-25">
	<h2 class="rounded bg-light">ADD ACADEMY MEMBER</h2>
		<!-- get방식 post방식 주의해서 사용할것 -->
		<form method="post" action="<%=request.getContextPath()%>/insertStudentAction.jsp"> 
				<table class="table">
					<tr>
						<td class="t1">이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td class="t1">주민등록번호</td>
						<td><input type="text" name="sn"></td>
					</tr>
					<tr>
						<td class="t1">수강상태</td>
						<td>
							<input type="radio" name="category" value="모집">모집
							<input type="radio" name="category" value="훈련중">훈련중
							<input type="radio" name="category" value="수료">수료
							<input type="radio" name="category" value="중도탈락">중도탈락
						</td>
					</tr>
					<tr>
						<td class="t1"><label for="startdate">시작날짜</label></td>
						<td><input type="date" name="startdate">
					</tr>
					<tr>	
						<td class="t1"><label for="enddate">종료날짜</label></td>
						<td><input type="date" name="enddate"></td>
					</tr>
					<tr>
						<td class="t1">지원동기</td>
						<td>
							<textarea rows="3" cols="30" name="memo"></textarea>
					</tr>
					<tr>
						<td colspan="2" class="t1">
							<button type="submit" class="btn btn-outline-light text-dark">모집신청</button>
						</td>
				</table>
		</form>
	</div>
</body>
</html>