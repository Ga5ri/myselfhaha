<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentForm</title>
<style>
	table, td {
		border: 1px solid pink;
	}
</style>
</head>
<body>
	<h1>개인정보 입력</h1>
	<form action="./studentAction.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="number" name="age"></td>
			</tr>
			<tr>
				<td>성별</td> 
				<td>
					<input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자
				</td>
			</tr>
			<tr>
				<td>취업유무</td>
				<td>
					<select name="isJob">
						<option value="실업자">실업자</option>
						<option value="재직자">재직자</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">입력</button>
				</td>
			</tr>		
		</table>
	</form>
</body>
</html>