<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 논리연산자 -> 결과물 boolean -> if문 조건에 많이 사용된다.
// && -> and(둘다 참이어야 참), || -> or(둘 중 하나만 참이어도 참)
System.out.println(true && true); // true
System.out.println(7 > 5 && 10 == 10); // true
System.out.println(true && false); // false
System.out.println(1 > 0 && 10%2 == 1); // false
System.out.println(false && true); // false
System.out.println(false && false); // false

System.out.println(true || true); // true
System.out.println(true || false); // true
System.out.println(1 > 0 || 10%2 ==1); // true
System.out.println(false || true); // true
System.out.println(false || false); // false
%>