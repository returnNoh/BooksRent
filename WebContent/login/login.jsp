<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="action.*,com.member.dao.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<%
SqlMemberDAO dao = new SqlMemberDAO();
MemberDTO loginDTO = new MemberDTO();
loginDTO.setP_email(request.getParameter("p_email"));
loginDTO.setP_passwd(request.getParameter("p_passwd"));
MemberDTO asd = null;
asd = dao.Login(loginDTO);
if(asd!=null){
	out.println("성공이냐");
}else{
	out.println("으아아ㅏㅏㅏㅏㅏ");
}
%>


</body>
</html>