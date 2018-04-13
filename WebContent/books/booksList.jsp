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

    
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->

    <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

    

    <jsp:include page="../base/top.jsp"></jsp:include>
    
    
    <div class="modal fade" id="product-quick-view-modal" tabindex="-1" role="dialog" aria-hidden="false">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-body">

                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                                            <div class="row quick-view product-main">
                                                <div class="col-sm-6">
                                                    <div class="quick-view-main-image">
                                                        <img src="img/detailbig1.jpg" alt="" class="img-responsive">
                                                    </div>

                                                    <div class="ribbon ribbon-quick-view sale">
                                                        <div class="theribbon">SALE</div>
                                                        <div class="ribbon-background"></div>
                                                    </div>
                                                    <!-- /.ribbon -->

                                                    <div class="ribbon ribbon-quick-view new">
                                                        <div class="theribbon">NEW</div>
                                                        <div class="ribbon-background"></div>
                                                    </div>
                                                    <!-- /.ribbon -->

                                                    <div class="row thumbs">
                                                        <div class="col-xs-4">
                                                            <a href="img/detailbig1.jpg" class="thumb">
                                                                <img src="img/detailsquare.jpg" alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <div class="col-xs-4">
                                                            <a href="img/detailbig2.jpg" class="thumb">
                                                                <img src="img/detailsquare2.jpg" alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <div class="col-xs-4">
                                                            <a href="img/detailbig3.jpg" class="thumb">
                                                                <img src="img/detailsquare3.jpg" alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-sm-6">

                                                    <h2>White Blouse Armani</h2>

                                                    <p class="text-muted text-small text-center">White lace top, woven, has a round neck, short sleeves, has knitted lining attached</p>

                                                    <div class="box">

                                                        <form>
                                                            <div class="sizes">

                                                                <h3>Available sizes</h3>

                                                                <label for="size_s">
                                                                    <a href="#">S</a>
                                                                    <input type="radio" id="size_s" name="size" value="s" class="size-input">
                                                                </label>
                                                                <label for="size_m">
                                                                    <a href="#">M</a>
                                                                    <input type="radio" id="size_m" name="size" value="m" class="size-input">
                                                                </label>
                                                                <label for="size_l">
                                                                    <a href="#">L</a>
                                                                    <input type="radio" id="size_l" name="size" value="l" class="size-input">
                                                                </label>

                                                            </div>

                                                            <p class="price">$124.00</p>

                                                            <p class="text-center">
                                                                <button type="submit" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                                                <button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Add to wishlist"><i class="fa fa-heart-o"></i>
                                                                </button>
                                                            </p>


                                                        </form>
                                                    </div>
                                                    <!-- /.box -->

                                                    <div class="quick-view-social">
                                                        <h4>Show it to your friends</h4>
                                                        <p>
                                                            <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                                            <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                                            <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                                            <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                                        </p>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                              </div>


    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">

                        <li><a href="#">Home</a>
                        </li>
                        <li>Ladies</li>
                    </ul>
                    <div class="row">
                        <div class="box text-center">
                            <div class="row">
                                <div class="col-sm-10 col-sm-offset-1">
                                    <h1>Ladies</h1>
                                    <p class="text-muted">In our Ladies department we offer wide selection of the best products we have found and carefully selected worldwide. Pellentesque habitant morbi tristique senectus et netuss.</p>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="row">


                    <!-- *** LEFT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-9">

                        

                        <div class="row products">
                        
  
<!-- ========여기부터 반복 시작=========== -->
					<c:if test="${count==0}">
					<p class="price">게시글이 부족하당</p>
						</c:if>
	
						<c:forEach var="menu" items="${list}">
                            <div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="detail.html">
                                            <img src="book_image/${menu.book_filename}" alt="" class="img-responsive image1" style="width:100%;height:250px;">
                                        </a>
                                        <div class="quick-view-button">
                                            <a href="#" data-toggle="modal" data-target="#product-quick-view-modal" class="btn btn-default btn-sm">Quick view</a>
                                        </div>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="#" data-toggle="modal" data-target="#product-quick-view-modal">${menu.book_name}</a></h3> 
                                        <p class="price">${menu.book_company}</p>
                                    </div>
                                    <!-- /.text -->
                                </div>
                                <!-- /.product -->
                            </div>
                            </c:forEach>
<!-- =====여기까지만 반복해서 사용하기=========== -->
                         

                        </div>
                        <!-- /.products -->



                        


                        <div class="pages">
                        
                        ${pagingHtml}

                            <!-- <ul class="pagination">
                                <li><a href="#">&laquo;</a>
                                </li>
                                <li class="active"><a href="#">1</a>
                                </li>
                                <li><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#">4</a>
                                </li>
                                <li><a href="#">5</a>
                                </li>
                                <li><a href="#">&raquo;</a>
                                </li>
                            </ul>
                        </div> -->


                    </div>
                    <!-- /.col-md-9 -->
					</div>
                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-3">

                        <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title">Categories</h3>
                            </div>

                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked category-menu">
                                    <li>
                                        <a href="category.html">Men <span class="badge pull-right">42</span></a>
                                        <ul>
                                            <li><a href="category.html">T-shirts</a>
                                            </li>
                                            <li><a href="category.html">Shirts</a>
                                            </li>
                                            <li><a href="category.html">Pants</a>
                                            </li>
                                            <li><a href="category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="active">
                                        <a href="category.html">Ladies  <span class="badge pull-right">123</span></a>
                                        <ul>
                                            <li><a href="category.html">T-shirts</a>
                                            </li>
                                            <li><a href="category.html">Skirts</a>
                                            </li>
                                            <li><a href="category.html">Pants</a>
                                            </li>
                                            <li><a href="category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="category.html">Kids  <span class="badge pull-right">11</span></a>
                                        <ul>
                                            <li><a href="category.html">T-shirts</a>
                                            </li>
                                            <li><a href="category.html">Skirts</a>
                                            </li>
                                            <li><a href="category.html">Pants</a>
                                            </li>
                                            <li><a href="category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>

                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title">Brands <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a></h3>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Armani (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Versace (12)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Carlo Bruni (15)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Jack Honey (14)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title clearfix">Colours<a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a></h3>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour white"></span> White (14)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour green"></span> Green (20)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour red"></span> Red (10)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div>

                        <!-- *** MENUS AND FILTERS END *** -->

                        
                        <!-- /.banner -->

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** RIGHT COLUMN END *** -->

                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <jsp:include page="../base/footer.jsp"></jsp:include>
        



    </div>
    <!-- /#all -->


    <!-- #### JAVASCRIPT FILES ### -->

    <script src="base/js/jquery-1.11.0.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/jquery.cookie.js"></script>
    <script src="base/js/front.js"></script>

    



</body>

</html>