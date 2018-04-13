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

    <!-- *** NAVBAR END *** -->

    <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

    

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">

                        <li><a href="index.html">Home</a>
                        </li>
                        <li>MY LIBRARY</li>
                    </ul>


                    <div class="box text-center">

                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <h1>나만의 도서관</h1>
                                <p class="text-muted">총 ? 권의 책을 구비중입니다.</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-9 clearfix" id="basket">

                    <div class="box">

                        <form method="post" action="checkout1.html">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Product</th>
                                            <th>Quantity</th>
                                            <th>Unit price</th>
                                            <th>Discount</th>
                                            <th colspan="2">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="#">
                                                    <img src="base/img/detailsquare.jpg" alt="White Blouse Armani">
                                                </a>
                                            </td>
                                            <td><a href="#">책 이름 들어갈곳</a>
                                            </td>
                                            
                                            <td>빌린 날짜</td>
                                            <td>반납 날짜</td>
                                            <td>$246.00</td>
                                            <td><a href="#">연장버튼</a>
                                            </td>
                                        </tr>
                                        
                                    </tbody>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="#">
                                                    <img src="base/img/detailsquare.jpg" alt="White Blouse Armani">
                                                </a>
                                            </td>
                                            
                                            <td><a href="#">책 이름 들어갈곳</a>
                                            </td>
                                            <td></td><td></td><td></td>
                                            <td>구매 날짜</td>
                                        </tr>
                                        
                                    </tbody>
                                    <!-- <tfoot>
                                        <tr>
                                            <th colspan="5">Total</th>
                                            <th colspan="2">$446.00</th>
                                        </tr>
                                    </tfoot> -->
                                </table>

                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="category.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>새로운 책 찾기</a>
                                </div>
                                <div class="pull-right">
                                    <button type="button" class="btn btn-primary">이전목록<i class="fa fa-chevron-left"></i>
                                    </button>
                                    페이징처리 넣을 부분
                                    <button type="button" class="btn btn-primary">다음목록<i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>

                        </form>

                    </div>
                    <!-- /.box -->

                    <!-- <div class="row">
                        <div class="col-md-3">
                            <div class="box">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="base/img/product2.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            /.product
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="base/img/product3.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            /.product
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="base/img/product1.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            /.product
                        </div>

                    </div> -->

                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">
                    <!-- <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th>$446.00</th>
                                    </tr>
                                    
                                    <tr class="total">
                                        <td>Total</td>
                                        <th>$456.00</th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
 -->

                    <div class="box">
                        <div class="box-header">
                            <h4>가진책 검색</h4>
                        </div>
                        <p class="text-muted">아래 빈칸에 원하시는 책의 이름을 적어주세요</p>
                        <form>
                            <div class="input-group">

                                <input type="text" class="form-control">

                                <span class="input-group-btn">

					<button class="btn btn-primary" type="button"><i class="fa fa-gift"></i></button>

				    </span>
                            </div>
                            <!-- /input-group -->
                        </form>
                    </div>

                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>
  

        <jsp:include page="../base/footer.jsp"></jsp:include>
       
        



    </div>
    <!-- /#all -->

 

    <script src="base/js/jquery-1.11.0.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/jquery.cookie.js"></script>
    <script src="base/js/front.js"></script>

    



</body>

</html>