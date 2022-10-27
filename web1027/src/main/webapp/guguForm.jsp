<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="./guguResponse.jsp">
		<div>
			<select name="dan">
				<%
					for(int i=2; i<10; i+=1){
				%>
						<option value="<%=i%>">
							<%=i%>
						</option>
				<%
					}
				%>
			</select>
		</div>
		<button type="submit">출력</button> <!-- submit은 버튼은 아님 버튼모양의 전송역할 -->
	</form>
</body>
</html>