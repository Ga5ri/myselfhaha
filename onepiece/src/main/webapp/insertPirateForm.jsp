<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		h2{
			text-align:center;
		}
		body {
			height: 100vh;
		    width: 100vw;
		    background-image: url('img/login.jpg');
		    background-repeat : no-repeat;
		    background-size : cover;
			}
	</style>
</head>
	<body>
		<div class="container p-2 my-2 w-50 h-25">
			<h2 class="container bg-success rounded text-white">ADD MEMBER</h2>
			<form action="<%=request.getContextPath()%>/insertPirateAction.jsp">
				<table class="table table-bordered border-dark">
					<tr>
						<td>NAME :</td>
						<td><input type="text" name="pname"></td>
					</tr>
					<tr>
						<td>AGE :</td>
						<td><input type="number" name="page"></td>
					</tr>
					<tr>
						<td>FRUIT :</td>
						<td>
							<input type="radio" name="pfruit" value="Y">Y
							<input type="radio" name="pfruit" value="N">N
						</td>
					</tr>
					<tr>
						<td>HOME :</td>
						<td><input type="text" name="phome"></td>
					</tr>
					<tr>
						<td>GENDER :</td>
						<td>
							<input type="radio" name="pgender" value="남">남
							<input type="radio" name="pgender" value="여">여
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center;">
							<button type="submit">ADD</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>