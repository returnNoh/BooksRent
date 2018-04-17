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
                        <div class="image">
                            <a href="post.html">
                                <img src="book_image/${list.book_filename}" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">${list.book_name}[${list.book_company}]</p>
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
			var loading = false;
			$(window)
					.scroll(
							function() {
								if (stop == 0) {
									var $this = $(this);
										
										var pageDown = $(".check").height()+$('.navbar').height()+ $(".banner").height()+ $(".inner-page").height(); 
										
										if ($(window).scrollTop()
												+ $(window).height() > pageDown && loading==false) {
											//alert(pageDown) ;
											loading==true;
											
											pageRow++;
											loadMore(pageRow);
											//alert('stop=' + stop)
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
							success : function(data) {
						
								$.each(data.list,function(){
									var notice = '<div class="col-sm-offset-1 col-sm-10" id="blog-listing"><div class="image"><a href="post.html">';
									notice+='<img src="book_image/'+this.book_filename+'" class="img-responsive" alt="Example blog post alt">';
									notice+='</a></div><p class="intro">';
									notice+='<p class="intro">'+this.book_name+'['+this.book_company+']</p></div>';
									$('.flex-container').append(notice);
								})
								loading=false;
							}
						});
			}
			

		})
	</script> 

    



</body>

</html>