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
    <!-- owl carousel css -->

    <link href="base/css/owl.carousel.css" rel="stylesheet">
    <link href="base/css/owl.theme.css" rel="stylesheet">
</head>

<body>

    <!-- *** NAVBAR ***
_________________________________________________________ -->

    <jsp:include page="base/top.jsp"></jsp:include>

    <!-- *** SLIDER ***
	_________________________________________________________ -->

    <div id="slider" class="owl-carousel owl-theme">

        <div class="item">
            <a href="#">
                <img src="base/img/1.jpeg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>

        <div class="item">
            <a href="#">
                <img src="base/img/2.jpg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>

        <div class="item">
            <a href="#">
                <img src="base/img/3.jpg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>

        <div class="item">
            <a href="#">
                <img src="base/img/4.jpg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>

        <div class="item">
            <a href="#">
                <img src="base/img/5.jpg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>

        <div class="item">
            <a href="#">
                <img src="base/img/6.jpg" alt="" class="base/img-responsive" style="width:448px;height:447px;">
            </a>
        </div>


    </div>
    <!-- /#slider -->

    <!-- *** SLIDER END *** -->

    <div id="all">

        <!-- *** ADVANTAGES ***
_________________________________________________________ -->

        <div id="advantages">

            <div class="container">

                <div class="col-md-12">

                    <div class="box text-center">
                        <h3 class="text-uppercase">About Minimal</h3>

                        <p>Minimal contains <strong>23 beautiful HTML pages</strong> and is built with strong attention to detail.</p>



                        <div class="same-height-row row">
                            <div class="col-sm-3">
                                <div class="box same-height clickable no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-heart-o"></i>
                                    </div>
                                    <h4><a href="text.html">다양한 책</a></h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height clickable no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-tags"></i>
                                    </div>
                                    <h4><a href="text.html">손쉬운 보관</a></h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height clickable no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-send-o"></i>
                                    </div>
                                    <h4><a href="faq.html">빠른배송</a></h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height clickable no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-refresh"></i>
                                    </div>
                                    <h4><a href="contact.html">상태좋은 중고책 판매</a></h4>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                    </div>

                </div>


            </div>
            <!-- /.container -->

        </div>
        <!-- /#advantages -->

        <!-- *** ADVANTAGES END *** -->

        <!-- *** CONTENT ***
	    _________________________________________________________
	    _________________________________________________________
	    -->

        <div id="content">
            

            <!-- *** PROMO BAR ***
_________________________________________________________ -->

            <div class="bar background-image-fixed-2 no-mb color-white text-center">
                <div class="dark-mask"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="icon icon-lg"><i class="fa fa-file-code-o"></i>
                            </div>
                            <h1>책을 좀더 가깝게</h1>
                            <p class="lead">가볍고 가깝다</p>
                            <p class="text-center">
                                <a href="index2.html" class="btn btn-primary btn-lg">책 구경 ㄱㄱ</a>
                            </p>
                        </div>

                    </div>
                </div>
            </div>

            <!-- *** PROMO BAR END *** -->
        </div>
        <!-- /#content -->

        <!-- *** FOOTER ***
_________________________________________________________ -->

<jsp:include page="base/footer.jsp"></jsp:include>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="base/js/jquery-1.11.0.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/jquery.cookie.js"></script>
    <script src="base/js/front.js"></script>


    <!-- owl carousel -->
    <script src="base/js/owl.carousel.min.js"></script>



</body>

</html>