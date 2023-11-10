<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	pageContext.setAttribute("attrPage","attrPage");
	request.setAttribute("attrRequest", "attrRequest");
%>


 <h2>지시어와 액션태그 동작 방식 비교</h2>
 <hr>
  
 <h3>지시어 방식</h3>
 <%@ include file = "inc/OuterPage1.jsp" %>
 include 지시자 방식에서 선언한 변수: <%= newVar1 %>
 <p>페이지 영역(scope) 공유</p>
 <p>include 되는 페이지에서 생성한 변수도 공유가 됨</p>
 
 <hr>
 
 <h3>액션태그 방식</h3>
 <jsp:include page="inc/OuterPage2.jsp"></jsp:include>
 액션태그 방식에서 선언한 변수 : <%--=newVar2 --%>
 
</body>
</html>
