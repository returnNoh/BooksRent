<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
if(request.getParameter("id")!=null){
	session.setAttribute("id", request.getParameter("id"));
}

%>
<%-- <c:if test="${not empty(requestScope.id)}" ><c:set var="id" value="${requestScope.id}" scope="session"/></c:if> --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXX도서 대여점 메인</title>
</head>
<body>
<center>
<c:if test="${empty(sessionScope.id)}">
<input type="button" value="로그인 하기" style="width:150pt;height:100pt;" onclick="location.href='login.jsp'">
<input type="button" value="회원가입 하기" style="width:150pt;height:500pt;" onclick="location.href='regist.jsp'">
</c:if>
<c:if test="${not empty(sessionScope.id)}">
<c:out value="${sessionScope.id}님 환영합니다."/>
<input type="button" value="로그오프" style="width:150pt;height:100pt;" onclick="location.href='logout.jsp'">
</c:if>

<hr>
	<c:if test="${not empty(sessionScope.id)}">
		<input type="button" value="도서 검색하기" style="width:150pt;height:100pt;" onclick="location.href='search.jsp'">
		<input type="button" value="도서 대여하기" style="width:150pt;height:500pt;" onclick="location.href='rent.jsp'">
	</c:if>
<hr>
	<c:if test="${sessionScope.id=='admin'}">
		<input type="button" value="가계표" style="width:150pt;height:100pt;" onclick="location.href=''">
		<input type="button" value="책, 유저 정보 수정" style="width:150pt;height:100pt;" onclick="location.href='bookRegist.jsp'">
	</c:if>
	<jsp:include page="Map.html"></jsp:include>
	
</center>





</body>
</html>