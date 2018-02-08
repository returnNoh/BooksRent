<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="xxx.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
request.setCharacterEncoding("UTF-8");
String select;
String search;
bookDTO dto = null;
ArrayList<bookDTO> list = null;
int nowpage=1;
int count = 0;
int pagenum=5;
int blocknum=5;
if(request.getParameter("nowpage")==null) nowpage=1;
	else nowpage=Integer.parseInt(request.getParameter("nowpage"));

System.out.println(pagenum+":"+blocknum);
if(request.getParameter("search")!=null){
select = request.getParameter("select");
search = request.getParameter("search");
System.out.println(select+":"+search);

bookDAO dao = new bookDAO();
count = dao.count();
dto =null;

list = dao.search_book(select,search,(nowpage*pagenum),pagenum);
}





%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<script>
function search(){
	if(document.booksearch.search.value==""){
		
		self.location="location.reload()"
		return;
	}else{
		document.booksearch.submit();
	}
	document.booksearch.submit();
}
</script>
<body>
<center>

<form name="booksearch" method="get">
<tr>
<td>
<select name="select">
<option value="name"> 글 제목 </option>
<option value="booknum"> 글 번호 </option>
<option value="id"> 빌려간사람 </option>
</select>
</td>
<td>
<input type="text" name="search" size="15" ><input type="button" value="검색" onclick="search()">
</td>


</tr>
</form>
<hr>


<%if(list==null){ %>
결과가 존재하지 않습니다.<br>
<%}else{%>

<table border="1">
<tr>
<td>책 이름</td><td>책 번호</td><td>현재 빌려간사람</td>
</tr>
<%for(int i=0;i<list.size();i++)
{dto=list.get(i); 
if(dto.getId().equals("admin"))dto.setId("대여가능"); %>
<tr>
<td><%=dto.getName()%></td><td><%=dto.getBooknum()%></td><td><%=dto.getId()%></td>
</tr>

<%} %>
</table>


<tr align="center">

<%if(nowpage>blocknum){ %>
<a href="search.jsp?nowpage=<%=nowpage-pagenum%>">[이전]</a>
<%}for(int i=1;i<=pagenum;i++){ %>
<a href="search.jsp?nowpage=<%=i%>">[<%=i%>]</a>
<%}if(nowpage<(count-blocknum)){ %>
<a href="search.jsp?nowpage=<%=nowpage+pagenum%>">[다음]</a>
<%} %>
<%} %>

</tr>
</center>
</body>
</html>