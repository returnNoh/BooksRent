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
    
    <style>
.flex-container {
	display: flex;
	flex-wrap: wrap;
}
</style>
</head>

<body>
    
	<jsp:include page="../base/top.jsp"></jsp:include>
    


    <div id="all">

        <div id="content">
            <div class="container check">
			
                <div class="col-md-12">
                    <ul class="breadcrumb">

                        <li><a href="main2.books">Home</a>
                        </li>
                        <li>NEWBOOK</li>
                    </ul>


                    <div class="box text-center">

                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <h1>신간</h1>
                                <p>위에서부터 최근 나온 책입니다. 스크롤을 하시면 나온 순서대로 로딩됩니다.</p>
                            </div>
                        </div>
                    </div>

                </div>
               

                <!-- *** LEFT COLUMN ***
		     _________________________________________________________ -->
		    <div class="container flex-container">
			<c:forEach var="list" items="${list}" >
                <div class="col-sm-offset-1 col-sm-10" id="blog-listing">
					
                   <!--  <div class="post">
                       <div class="row">
                        -->
                        <div class="image">
                            <a href="post.html">
                                <img src="book_image/${list.book_filename}" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>

                        <p class="intro">${list.book_name}[${list.book_company}]</p>
                    <!-- </div>
                </div> -->
               </div>
   </c:forEach>
   </div>
   
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <jsp:include page="../base/footer.jsp"></jsp:include>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->




    </div>
    <!-- /#all -->


    <!-- #### JAVASCRIPT FILES ### -->

    <script src="base/js/jquery-1.11.0.min.js"></script>
    <script src="base/js/bootstrap.min.js"></script>
    <script src="base/js/jquery.cookie.js"></script>
    <script src="base/js/front.js"></script>
    <script>
		$(function() {
			var pageRow = 0;
			var stop = 0;

			$(window)
					.scroll(
							function() {
								if (stop == 0) {
									var $this = $(this);
									var $results = $(".flex-container");
									if (!$results.data("loading")) {
										var pageDown = $(".check").height()+$('.navbar').height()
										
										/* 
												+ $(".banner").height()
												+ $(".inner-page").height() */
										//alert($results.html()) ;
										if ($(window).scrollTop()
												+ $(window).height() > pageDown) {
											//alert(pageDown) ;
											
											
											pageRow++;
											loadMore(pageRow);
											//alert('stop=' + stop)
										}
									}
								}
							});

			function loadMore(i) {
				//alert(i)
				$
						.ajax({
							url : "newbookList.books",
							type : "post", 
							data : {
								index : i
							},
							beforeSend : function(xhr) {
								$(".flex-container")
										.after(
												$(
														"<div class='loading' style='width: 100%'  align='center'><img src='base/img/icon_loading.gif'></div>")
														.fadeIn('slow')).data(
												"loading", true);
							},
							success : function(data) {
								alert(data)
								var $results = $(".flex-container");
								$(".loading").fadeOut('fast', function() {
									$(this).remove();
								});
								var $data = $(data);
								var $f_data = $data.find(".flex-container");
								//alert("h4" + $f_data.find("h4").text());
								var restList = $f_data.find("h4").text();
								//alert(restList)

								$data.hide();
								if (restList != "") {
									$results.append($f_data.html());
								} else {
									stopfun();
								}
								$data.fadeIn();
								$results.removeData("loading");
							},error : function(){
								alert("오류")
							}
						});
			}
			function stopfun() {
				stop = 1;
			}

		})
	</script>

    



</body>

</html>