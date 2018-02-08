<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="xxx.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
bookDAO dao = new bookDAO();
String name = request.getParameter("name");
int booknum = Integer.parseInt(request.getParameter("booknum"));
boolean check = dao.regist_book(name,booknum);
%>
<c:set var="check" value="<%=check%>"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<c:if test="${check==true}"><script>alert("성공적으로 등록되었습니다")</script></c:if>
<c:if test="${check==false}"><script>alert("등록에 실패하였습니다.")</script></c:if>
<c:redirect url="index.jsp"/>



</body>
</html>