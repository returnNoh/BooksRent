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
    <link href="../base/css/font-awesome.css" rel="stylesheet">
    <link href="../base/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme stylesheet -->
    <link href="../base/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="../base/css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <script src="../base/js/respond.min.js"></script>

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

    <div class="col-md-9 clearfix" id="customer-account">


                    <div class="box clearfix">
                        <h3>책 등록</h3>
                        <form enctype="multipart/form-data" method="post" action="register.books" >
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">책 번호</label>
                                        <input type="text" class="form-control" name="book_num" id="firstname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">책 이름</label>
                                        <input type="text" class="form-control" name="book_name"  id="lastname">
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="company">출판사</label>
                                        <input type="text" class="form-control" name="book_company"  id="company">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="street">태그정보</label>
                                        <input type="text" class="form-control" name="book_tag"  id="street">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="street">이미지 업로드</label>
                                		<input type="file" name="upload">
                                </div>
                                </div>
                                <div class="col-sm-12 text-center">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>책 등록</button>
                                </div>
                            </div>

                        </form>

                    </div>

                </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <jsp:include page="../base/footer.jsp"></jsp:include>
        <!-- /#footer -->




    </div>
    <!-- /#all -->


    <!-- #### JAVASCRIPT FILES ### -->

    <script src="../base/js/jquery-1.11.0.min.js"></script>
    <script src="../base/js/bootstrap.min.js"></script>
    <script src="../base/js/jquery.cookie.js"></script>
    <script src="../base/js/front.js"></script>
	<script>
	/* function EmailCheck(){
		var email = $('#email').val()
		$.ajax({url:"emailcheck.books",item:{"email":email},success:function(data){
			$('#check_num').remove()
			$('#check').after('<input type="text" id="check_num" name="check_num" onclick="check_num">'+
					'<input type="button" value="번호인증" onclick="function(){var check_num=$("#check_num").val()'+
				'if(check_num=='+data+'){alert("인증완료")}else{alert("번호다름")}}">')
		}})
	} */
	
	</script>
    



</body>

</html>