<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// ex4Form.jsp -> ex4.jsp(action)
	// request.getParameter("age")  // <input type="number" name="age">
	String age = request.getParameter("age");
	int numAge = Integer.parseInt(age);
	if(numAge < 18){ //false
%>
		<h2><span style="color:red;"><%=age%></span>미성년자</h2>
<%		
	} else {
%>
		<h2><span style="color:red;"><%=age%></span>성인</h2>
<%
	}
	
	// request.getParameter("gender") // M,F <input type="radio" name="gender">
	String gender = null;
	gender = request.getParameter("gender");
	if(gender.equals("M")){ // 문자열 비교는 ==대신 equals()메서드를 사용
%>
		<h2>당신은 &#128102;남자 입니다.</h2>
<%		
	} else {
%>
		<h2>당신은 &#128103;여자 입니다.</h2>
<%
	}
%>
</body>
</html>