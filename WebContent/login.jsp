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
<body>
<form name="login" action="index.jsp">
<center>
아이디 : <input type="text" name="id" size="20"><br>
비밀번호 : <input type="text" name="pass" size="20">
<hr>
<input type="submit" value="로그인">&emsp;<input type="button" value="뒤로가기" onclick="history.back()">
<br><input type="button" value="계정정보를 잃어버리셨습니까?">

</center>
</form>
</body>
</html>