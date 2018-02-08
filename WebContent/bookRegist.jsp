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
<script>
function add(){
	var tab = document.getEle
}
</script>


<center>
<form method="post" action="bookRegistpro.jsp">
<table id="tab">
<tr>
<td>책이름:<input name="name" type="text" size="60"></td>
<td>책번호:<input name="booknum" type="text" size="20"></tr>
</tr>
<tr>
<td><input type="submit" value="등록"></td>
<td><input type="button" value="책추가+" onclick="add()"></td>
</tr>
</table>
</form>
<br>
<input type="button" value="메인으로" onclick="javascript:location.href='index.jsp'">

</center>
</body>
</html>