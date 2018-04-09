<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Minimal |e-commerce template</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700|Merriweather:400,400italic' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link href="base/css/font-awesome.css" rel="stylesheet">
    <link href="base/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme stylesheet -->
    <link href="base/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="base/css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <script src="base/js/respond.min.js"></script>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.png">
</head>

<body>
    <!-- *** NAVBAR ***
_________________________________________________________ -->

    <jsp:include page="../base/top.jsp"></jsp:include>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->

    <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

    

    <!-- *** LOGIN MODAL END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">

                        <li><a href="index.html">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>New account</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form action="register.books" method="post">
                        
                        <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="p_email">
                            </div>
                            <input type="button" id="check" class="btn btn-default" value="인증메일보내기" onclick="EmailCheck()">
                            
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="passwd" name="p_passwd">
                            </div>
                        
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="p_name">
                            </div>
                            
                            <div class="form-group">
                                <label for="name">Nic</label>
                                <input type="text" class="form-control" id="nic" name="p_nic">
                            </div>
                            
                            
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Login</h1>

                        <p class="lead">Already our customer?</p>
                        <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo.</p>

                        <hr>

                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <jsp:include page="../base/footer.jsp"></jsp:include>
        <!-- /#footer -->




    </div>
    <!-- /#all -->


    <!-- #### JAVASCRIPT FILES ### -->

    <script src="base/js/jquery-1.11.0.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/jquery.cookie.js"></script>
    <script src="base/js/front.js"></script>
	<script>
	function EmailCheck(){
		var email = $('#email').val()
		$.ajax({url:"emailcheck.books",item:{"email":email},success:function(data){
			$('#check_num').remove()
			$('#check').after('<input type="text" id="check_num" name="check_num" onclick="check_num">'+
					'<input type="button" value="번호인증" onclick="function(){var check_num=$("#check_num").val()'+
				'if(check_num=='+data+'){alert("인증완료")}else{alert("번호다름")}}">')
		}})
	}
	
	</script>
    



</body>

</html>