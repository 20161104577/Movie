<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
						<h1><a  href="index.jsp"><span>P</span>ili <span>P</span>ili</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li><a href="index.jsp">首页</a></li>
							<li><a href="genre.jsp">分类</a></li>
							<li><a href="news.jsp">资讯</a></li>
							<li><a href="country.jsp">国家</a></li>
								<li><a href="list.jsp">A - z 列表</a></li>
							    <li class="active"><a href="contact.jsp">联系我们</a></li>
							<c:choose>
								<c:when test="${sessionScope.USERNAME.u_name==null}">
									<li><a href="login.jsp">登录</a></li>
									<li><a href="register.jsp">注册</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="me">你好，${Sessionscope.USERNAME.u_name}</a></li>
								</c:otherwise>
							</c:choose>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> 
									</div>
									<div id="cd-search" class="cd-search">
										<form action="Findfilm" method="post">
											<input name="search" type="text" placeholder="Search...">
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
	     <div class="w3_breadcrumb">
		<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.jsp">首页</a><i>//</i></li>
				<li>联系我们</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
							<div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">联系我们</h3>
							</div>
						<div class="w3_mail_grids">
								<form action="#" method="post">
									<div class="col-md-6 w3_agile_mail_grid">
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="text" id="input-25" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-25">
												<span class="input__label-content input__label-content--ichiro">你的名字</span>
											</label>
										</span>
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="email" id="input-26" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-26">
												<span class="input__label-content input__label-content--ichiro">你的电子邮件</span>
											</label>
										</span>
										<span class="input input--ichiro">
											<input class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="">
											<label class="input__label input__label--ichiro" for="input-27">
												<span class="input__label-content input__label-content--ichiro">你的电话号码</span>
											</label>
										</span>
										
									</div>
									<div class="col-md-6 w3_agile_mail_grid two">
										<textarea name="Message" placeholder="你的信息" required=""></textarea>
										<input type="submit" value="提交">
									</div>
									<div class="clearfix"> </div>
								</form>
								<div class="agileits-get-us">
									<ul>
										<li><i class="fa fa-map-marker" aria-hidden="true"></i>中国</li>
										<li><i class="fa fa-phone" aria-hidden="true"></i>  +033 111 222 4567</li>
										<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@PiliPili.com"> mail@PiliPili.com</a></li>
									</ul>
								
							</div>
					
					</div>
					</div>
							<div class=" map">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12947831.742778081!2d-95.665!3d37.599999999999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1422444552833"></iframe>
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
						<h4>最新电影</h4>
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
									<a href="single.jsp">eveniet ut molesti</a>
									
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
								<li><a class="active" href="contact.jsp" title="contact">联系我们</a></li> 
								
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
			<!-- //search-jQuery -->
			

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