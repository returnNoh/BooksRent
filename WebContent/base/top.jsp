<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>


<div class="navbar navbar-default navbar-fixed-top yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.html">
                    <img src="/BooksRent/base/img/logo.png" alt="Minimal logo" class="hidden-xs hidden-sm">
                    <img src="/BooksRent/base/img/logo-small.png" alt="Minimal logo" class="visible-xs visible-sm"><span class="sr-only">Minimal - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle btn-primary" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <a class="btn btn-primary navbar-toggle" href="basket.html">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">소지중인 책</span>
                    </a>
                    <button type="button" class="navbar-toggle btn-default" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <button type="button" class="navbar-toggle btn-default" data-toggle="modal" data-target="#login-modal">
                        <span class="sr-only">User login</span>
                        <i class="fa fa-users"></i>
                    </button>

                </div>
            </div>
            <!--/.navbar-header -->

            <div class="navbar-collapse collapse" id="navigation">

                <ul class="nav navbar-nav navbar-left">
                    <li class="active dropdown normal-dropdown"><a href="index.html" class="dropdown-toggle" data-toggle="dropdown">회원전용<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="index.html">마이페이지</a>
                            </li>
                            <li><a href="index2.html">정보수정</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li><a href="contact.html">책 목록</a>
                    </li>
                    
                    <li><a href="contact.html">신간</a>
                    </li>
                    <li><a href="contact.html">공지사항</a>
                    </li>
                    
                </ul>

            </div>
            <!--/.nav-collapse -->
			<c:if test="${not empty p_email}">
            <div class="navbar-collapse collapse right" id="basket-overview">
                <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">소지한 책 <span class="hidden-md">보러가기</span></span></a>
            </div>
            </c:if>
            <!--/.nav-collapse -->

            <div class="navbar-collapse collapse right">
                <button type="button" class="btn navbar-btn btn-default" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle search</span>
                    <i class="fa fa-search"></i>
                </button>
            </div>
			
			<c:if test="${empty p_email}">
            <div class="navbar-collapse collapse right">
                <button type="button" class="btn navbar-btn btn-default" data-toggle="modal" data-target="#login-modal">
                    <span class="sr-only">User login</span>
                    <i class="fa fa-users"></i>
                </button>
            </div>
            </c:if>
            <c:if test="${not empty p_email}">
            <div class="navbar-collapse collapse right">
                <!-- <button type="button" class="btn navbar-btn btn-default" data-toggle="modal" data-target="#login-modal"> -->
                <a class="btn navbar-btn btn-default" href="logout.books">
                    <span class="sr-only">User logout</span>
                    <i class="fa fa-users"></i>
                    </a>
                <!-- </button> -->
            </div>
            </c:if>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
            <!--/.nav-collapse -->

        </div>


    </div>
    
    
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-sm">

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="Login">Customer login</h4>
                </div>
                <div class="modal-body">
                    <form id="login_form" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="p_email" id="p_email" placeholder="email">
                            
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="p_passwd" id="p_passwd" placeholder="password">
                        </div>

                        <p class="text-center">
                            <button class="btn btn-primary" onclick="Login()"><i class="fa fa-sign-in"></i> Log in</button>
                        </p>

                    </form>

                    <p class="text-center text-muted">가입하지않으셨습니까?</p>
                    <p class="text-center text-muted"><a href="register.books"><strong>지금 회원가입하기!</strong></a>
																
                </div>
            </div>
        </div>
    </div>


<script>

function Login(){
	var p_email=$('#p_email').val()
	var p_passwd=$('#p_passwd').val()
	$.ajax({
		url : "login.books",type:"post",
		item:{"p_email":p_email,"p_passwd":p_passwd},
		success : function(data) {
			alert(data)
			return
		},error : function(){alert('error')}
	})
}

</script>

</body>
</html>