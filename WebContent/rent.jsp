<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body onload="javascript:document.rent.bookname.focus()">
<center>
<form name="rent" method="post" action="rentpro.jsp">
책 번호 입력칸 : <input type="text" name="booknum" size="20" ><input type="submit" value="대여&반납">
</form>
<input type="button" value="메인으로" onclick="location.href='index.jsp'">


<h2>현재 빌리고 계신 책 정보</h2>
<!-- 여기에 세션 id 정보를 매개로 받아 빌린 책 목록을 띄우기. -->
<table>
</table>

</center>
</body>
</html>