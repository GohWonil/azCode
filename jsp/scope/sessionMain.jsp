<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.momo.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
<!-- 
	웹브라우저에서 서비에 처음 요청 할때 sessionId를 발급
	-> 응답객의 쿠키에 담아서 웹브라오져로 전송
	-> 웹브라우저는 응답을 받아서 쿠키에 저장 
	-> 서버에 요청시 쿠키정보를 담아서 요청
 
 	회원 인증후 로그인 상태를 유지 하는데 사용
 	웹브라우저를 닫고 다시 열게 되면 세션은 유지 되지 않는다.
 
 -->
 
 <%
	session.setAttribute("person", new Person("momo", 30));
 	
 	ArrayList<String> list = new ArrayList<String>();
 	list.add("list");
 	list.add("set"); //로또 만들기할때 주로 씀( 새로운 숫자 추출 - > 중복을 제거하고 담아)
 	list.add("map"); //많이 쓰임 (여러가지 데이터를 담아서 전달)
 	
 	session.setAttribute("list", list);
 	
 %>
 
<h2>페이지 이동후 session영역에 저장된 값 출력</h2>
<a href="sessionLocation.jsp">sessionLocation.jsp 바로가기</a>

<h2>세션 무효화</h2>
<a href = "sessionInvalidate.jsp">sessionInvalidate.jsp 바로가기</a>

</body>
</html>