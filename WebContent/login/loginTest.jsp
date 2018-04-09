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


 				<form id="login_form" action="login.books" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="p_email" id="p_email" placeholder="email">
                            
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="p_passwd" id="p_passwd" placeholder="password">
                        </div>

                        <p class="text-center">
                            <i class="fa fa-sign-in"></i><input type="submit" value="Log in">
                        </p>

                    </form>


</body>
</html>