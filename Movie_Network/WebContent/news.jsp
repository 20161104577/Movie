<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>News</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
	 <div class="banner-inner-dott">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile part2">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.html"><span>P</span>ili <span>P</span>ili</a></h1>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li><a href="index.jsp">首页</a></li>
							<li><a href="genre.jsp">分类</a></li>
							<li class="active"><a href="news.jsp">资讯</a></li>
							<li><a href="country.jsp">国家</a></li>
							<li><a href="list.jsp">A - z 列表</a></li>
						    <li><a href="contact.jsp">联系我们</a></li>
						    <c:choose>
								<c:when test="${true}">
									<li><a href="login.jsp">登录</a></li>
									<li><a href="register.jsp">注册</a></li>
								</c:when>
								<c:when test="${false }">
									<li><a href="me/me.jsp">你好，${sessionScope.USERNAME.u_name}</a></li>
								</c:when>
							</c:choose>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
									</div>
									<div id="cd-search" class="cd-search">
										<form action="Findfilm" method="post">
											<input name="Search" type="search" placeholder="Search...">
										</form>
									</div>
								</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
		<div class="w3_breadcrumb">
	<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.jsp">首页</a><i>//</i></li>
				<li>资讯</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
						<div class="agile_featured_movies">
				            <div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">资讯</h3>
							</div>
							   <div class="latest-news-agile-info">
								   <div class="col-md-8 latest-news-agile-left-content">
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.jsp"><img src="images/m1.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.jsp">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
													<div class="agile-post">
															by <a href="#" title="w3ls" rel="author">Admin</a> on	Oct 30, 2016 with <a href="#">2 comments</a>
														</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vitae eros eget tellus tristique bibendum.Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</p>
														<a class="new-more" href="news-single.jsp">阅读更多</a>
												</div>
												<div class="clearfix"> </div>
											</div>
								   </div>
								   <div class="col-md-4 latest-news-agile-right-content">
								   <h4 class="side-t-w3l-agile">关于最新 <span>电影</span></h4>
										<div class="side-bar-form">
										 <form action="#" method="post">
											<input type="search" name="email" placeholder="Search here...." required="required">
											<input type="submit" value=" ">
										 </form>
									    </div>
								      <h4 class="side-t-w3l-agile">热门 <span>话题</span></h3>
									    <ul class="side-bar-agile">
										   <li><a href="news-single.jsp">John Abraham, Sonakshi Sinha and Tahir ...</a><p>Sep 29, 2016</p></li>
										   <li><a href="news-single.jsp">Romantic drama about two people finding out that love</a><p>Feb 3, 2016</p></li>
										   <li><a href="news-single.jsp">Storks have moved on from delivering babies to packages ...</a><p>Aug 1, 2016</p></li>
										   <li><a href="news-single.jsp">John Abraham, Sonakshi Sinha and Tahir ...</a><p>Sep 29, 2016</p></li>
										   <li><a href="news-single.jsp">John Abraham, Sonakshi Sinha and Tahir ...</a><p>Sep 29, 2016</p></li>
										</ul>
										<h4 class="side-t-w3l-agile">最新 <span>预告片</span></h3>
										<div class="video_agile_player sidebar-player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA" id="video1"> <img src="images/22.jpg" alt="" class="img-responsive"> <div id="play"></div></div>
													</div>


										        <div class="player-text side-bar-info">
												<p class="fexi_header">《Me Before You》 </p>
												<p class="fexi_header_para"><span class="conjuring_w3">故事主线<label>:</label></span>Me Before You Official Trailer #2 (2016) - Emilia Clarke, Sam Claflin Movie HD

A girl in a small town forms an unlikely....</p>
												<p class="fexi_header_para"><span>上映时间<label>:</label></span>Feb 3, 2016 </p>
												<p class="fexi_header_para">
													<span>分类<label>:</label> </span>
													<a href="genre.jsp">Drama</a> | 
													<a href="genre.jsp">Adventure</a> | 
													<a href="genre.jsp">Family</a>								
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>评分<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
											<div class="clearfix"> </div>
											<div class="agile-info-recent">
											<h4 class="side-t-w3l-agile">最新 <span>预告</span></h4>
											<div class="w3ls-recent-grids">
												<div class="w3l-recent-grid">
													<div class="wom">
														<a href="news-single.jsp"><img src="images/m12.jpg" alt=" " class="img-responsive"></a>
													</div>
													<div class="wom-right">
														<h5><a href="news-single.jsp">Lorem Integer rutrum</a></h5>
														<p>Mauris fermentum dictum magna. Sed laoreet aliquam leo. 
															Ut tellus dolor, dapibus eget.</p>
															<ul class="w3l-sider-list">
																<li><i class="fa fa-clock-o" aria-hidden="true"></i>On Jan 12, 2016</li>
																<li><i class="fa fa-eye" aria-hidden="true"></i> 2602</li>
															</ul>
													</div>
													<div class="clearfix"> </div>
												</div>
												
											</div>
										</div>
										
							       </div>
								   <div class="clearfix"></div>
							   </div>
							   <div class="blog-pagenat-wthree">
								<ul>
									<li><a class="frist" href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									
									<li><a class="last" href="#">下一页</a></li>
								</ul>
							</div>
						</div>
				</div>
			<!--//content-inner-section-->


	<!--/footer-bottom-->
		<div class="contact-w3ls" id="contact">
			<div class="footer-w3lagile-inner">
					<div class="footer-grids w3-agileits">
						<div class="col-md-2 footer-grid">
						<h4>发布时间</h4>
							<ul> 
								<li><a href="#" title="Release 2016">2016</a></li> 
								<li><a href="#" title="Release 2015">2015</a></li>
								<li><a href="#" title="Release 2014">2014</a></li> 
								<li><a href="#" title="Release 2013">2013</a></li> 
								<li><a href="#" title="Release 2012">2012</a></li>
								<li><a href="#" title="Release 2011">2011</a></li> 
							</ul>
						</div>
						<div class="col-md-2 footer-grid">
						<h4>电影</h4>
							<ul>
								
								<li><a href="">冒险</a></li>
								<li><a href="">喜剧</a></li>
								<li><a href="">幻想</a></li>
								<li><a href="">动作  </a></li>
								<li><a href="">电影  </a></li>
								<li><a href="horror.html">恐怖  </a></li>
								
							</ul>
						</div>
				

							<div class="col-md-2 footer-grid">
								<h4>评论 电影</h4>
									<ul class="w3-tag2">
									<li><a href="">喜剧</a></li>
									<li><a href="horror.html">恐怖</a></li>
									<li><a href="">历史</a></li>
									<li><a href="">浪漫</a></li>
									<li><a href="">爱情</a></li>
									<li><a href="">行动</a></li>
									<li><a href="">评测</a></li>
									<li><a href="">戏剧</a></li>
									<li><a href="horror.html">恐怖</a></li>
									<li><a href="">历史</a></li>
									<li><a href="">浪漫</a></li>
									<li><a href="">爱情</a></li>
									<li><a href="">喜剧</a></li>
									<li><a href="horror.html">恐怖</a></li>
									<li><a href="">历史</a></li>
									
								</ul>


						</div>
								<div class="col-md-2 footer-grid">
						<h4>最新 电影</h4>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/1.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">eveniet ut molesti</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/2.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">earum rerum tenet</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
							
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/4.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.html">eveniet ut molesti</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/3.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">earum rerum tenet</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<div class="col-md-2 footer-grid">
						   <h4 class="b-log"><a href="index.jsp"><span>P</span>ili <span>P</span>ili</a></h4>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m1.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m2.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m3.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m4.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m5.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m6.jpg" alt=" " class="img-responsive"></a>
							</div>
								
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
						<ul class="bottom-links-agile">
								<li><a href="contact.jsp" title="contact">联系我们</a></li> 
								
							</ul>
					</div>
			 </div>
						
			</div>
			<div class="w3agile_footer_copy">
				    <p>Copyright &copy; 2019.Company name All rights reserved.More Templates 网编第三组</p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			
			<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video4").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video5").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video6").simplePlayer();
				});
			</script>

			<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="js/bootstrap.js"></script>

 

</body>
</html>