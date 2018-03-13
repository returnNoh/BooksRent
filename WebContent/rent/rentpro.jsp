<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="xxx.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
<%
int booknum = Integer.parseInt(request.getParameter("booknum"));

bookDAO dao = new bookDAO();

int check=dao.rent_book((String)session.getAttribute("id"), booknum);
%>
</head>
<body>
<%
if(check==1){
%>
<script>alert("대여 성공!")</script>
<%
}else if(check==2){
%>
<script>alert("반납 완료!")</script>
<%
}else if(check==9){
%>
<script>alert("책의 번호가 존재하지 않습니다!")</script>
<%
}else{
%>
<script>alert("알수없는 오류가 생겼습니다.")</script>
<%
}
%>
<script>history.back();</script>

</body>
</html>