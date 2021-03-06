<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>List</title>
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
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<!-- list-css -->
<link rel="stylesheet" href="css/list.css" type="text/css" media="all" />
<!-- //list-css -->
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
						    <li><a href="contact.jsp">联系我们</a></li>
						    <c:choose>
								<c:when test="${sessionScope.USERNAME.u_name==null}">
									<li><a href="login.jsp">登录</a></li>
									<li><a href="register.jsp">注册</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="me/me.jsp">你好，${sessionScope.USERNAME.u_name}</a></li>
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
				<li>分类</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
						<div class="agile_featured_movies">
						<div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">电影 列表</h3>
							</div>
				                   <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">ALL</a></li>
							<li role="presentation"><a href="#a" role="tab" id="a-tab" data-toggle="tab" aria-controls="a">A</a></li>
							<li role="presentation"><a href="#b" role="tab" id="b-tab" data-toggle="tab" aria-controls="b">B</a></li>
							<li role="presentation"><a href="#c" role="tab" id="c-tab" data-toggle="tab" aria-controls="c">C</a></li>
							<li role="presentation"><a href="#d" role="tab" id="d-tab" data-toggle="tab" aria-controls="d">D</a></li>
							<li role="presentation"><a href="#e" role="tab" id="e-tab" data-toggle="tab" aria-controls="e">E</a></li>
							<li role="presentation"><a href="#f" role="tab" id="f-tab" data-toggle="tab" aria-controls="f">F</a></li>
							<li role="presentation"><a href="#g" role="tab" id="g-tab" data-toggle="tab" aria-controls="g">G</a></li>
							<li role="presentation"><a href="#h" role="tab" id="h-tab" data-toggle="tab" aria-controls="h">H</a></li>
							<li role="presentation"><a href="#i" role="tab" id="i-tab" data-toggle="tab" aria-controls="i">I</a></li>
							<li role="presentation"><a href="#j" role="tab" id="j-tab" data-toggle="tab" aria-controls="j">J</a></li>
							<li role="presentation"><a href="#k" role="tab" id="k-tab" data-toggle="tab" aria-controls="k">K</a></li>
							<li role="presentation"><a href="#l" role="tab" id="l-tab" data-toggle="tab" aria-controls="l">L</a></li>
							<li role="presentation"><a href="#m" role="tab" id="m-tab" data-toggle="tab" aria-controls="m">M</a></li>
							<li role="presentation"><a href="#n" role="tab" id="n-tab" data-toggle="tab" aria-controls="n">N</a></li>
							<li role="presentation"><a href="#o" role="tab" id="o-tab" data-toggle="tab" aria-controls="o">O</a></li>
							<li role="presentation"><a href="#p" role="tab" id="p-tab" data-toggle="tab" aria-controls="p">P</a></li>
							<li role="presentation"><a href="#q" role="tab" id="q-tab" data-toggle="tab" aria-controls="q">Q</a></li>
							<li role="presentation"><a href="#r" role="tab" id="r-tab" data-toggle="tab" aria-controls="r">R</a></li>
							<li role="presentation"><a href="#s" role="tab" id="s-tab" data-toggle="tab" aria-controls="s">S</a></li>
							<li role="presentation"><a href="#t" role="tab" id="t-tab" data-toggle="tab" aria-controls="t">T</a></li>
							<li role="presentation"><a href="#u" role="tab" id="u-tab" data-toggle="tab" aria-controls="u">U</a></li>
							<li role="presentation"><a href="#v" role="tab" id="v-tab" data-toggle="tab" aria-controls="v">V</a></li>
							<li role="presentation"><a href="#w" role="tab" id="w-tab" data-toggle="tab" aria-controls="w">W</a></li>
							<li role="presentation"><a href="#x" role="tab" id="x-tab" data-toggle="tab" aria-controls="x">X</a></li>
							<li role="presentation"><a href="#y" role="tab" id="y-tab" data-toggle="tab" aria-controls="y">Y</a></li>
							<li role="presentation"><a href="#z" role="tab" id="z-tab" data-toggle="tab" aria-controls="z">Z</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>5</span></h4>
									</div>
									<table id="table-breakpoint">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href="single.jsp"><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href=""> Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href="single.jsp"><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  <tr>
											<td>3</td>
											<td class="w3-list-img"><a href="single.jsp"><img src="images/m11.jpg" alt="" /> <span>Warcraft</span></a></td>
											<td>2016</td>
											<td>SD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>6.5</td>
										  </tr>
										  <tr>
											<td>4</td>
											<td class="w3-list-img"><a href="single.jsp"><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>5</td>
											<td class="w3-list-img"><a href="single.jsp"><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="a" aria-labelledby="a-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>1</span></h4>
									</div>
									<table id="table-breakpoint1">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="b" aria-labelledby="b-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										  <h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint2">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="c" aria-labelledby="c-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint3">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m10.jpg" alt="" /> <span>Now You See Me 2</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="d" aria-labelledby="d-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint4">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m11.jpg" alt="" /> <span>Warcraft</span></a></td>
											<td>2016</td>
											<td>SD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>6.5</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="e" aria-labelledby="e-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint5">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="f" aria-labelledby="f-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint6">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m6.jpg" alt="" /> <span>Hopeless</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Euro, France</a></td>
											<td class="w3-list-info"><a href="">Thriller, Crime, Drama</a></td>
											<td>8.2</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m7.jpg" alt="" /> <span>Mechanic</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">China</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>8.9</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="g" aria-labelledby="g-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint7">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="h" aria-labelledby="h-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint8">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="i" aria-labelledby="i-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint9">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="j" aria-labelledby="j-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint10">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m10.jpg" alt="" /> <span>Now You See Me 2</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="k" aria-labelledby="k-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint11">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m11.jpg" alt="" /> <span>Karcraft</span></a></td>
											<td>2016</td>
											<td>SD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>6.5</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="l" aria-labelledby="l-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint12">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m6.jpg" alt="" /> <span>Hopeless</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Euro, France</a></td>
											<td class="w3-list-info"><a href="">Thriller, Crime, Drama</a></td>
											<td>8.2</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m7.jpg" alt="" /> <span>Mechanic</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">China</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>8.9</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="m" aria-labelledby="m-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint13">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="n" aria-labelledby="n-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint14">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="o" aria-labelledby="o-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint15">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="p" aria-labelledby="p-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint16">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m11.jpg" alt="" /> <span>Warcraft</span></a></td>
											<td>2016</td>
											<td>SD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>6.5</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="q" aria-labelledby="q-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint17">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="r" aria-labelledby="r-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint18">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m6.jpg" alt="" /> <span>Hopeless</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Euro, France</a></td>
											<td class="w3-list-info"><a href="">Thriller, Crime, Drama</a></td>
											<td>8.2</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m7.jpg" alt="" /> <span>Mechanic</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">China</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>8.9</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="s" aria-labelledby="s-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint19">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="t" aria-labelledby="t-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint20">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="u" aria-labelledby="u-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint21">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="v" aria-labelledby="v-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint22">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m11.jpg" alt="" /> <span>Warcraft</span></a></td>
											<td>2016</td>
											<td>SD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>6.5</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="w" aria-labelledby="w-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint23">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="x" aria-labelledby="x-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint24">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m6.jpg" alt="" /> <span>Hopeless</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Euro, France</a></td>
											<td class="w3-list-info"><a href="">Thriller, Crime, Drama</a></td>
											<td>8.2</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m7.jpg" alt="" /> <span>Mechanic</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">China</a></td>
											<td class="w3-list-info"><a href="">Comedy</a></td>
											<td>8.9</td>
										  </tr>
										 
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="y" aria-labelledby="y-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint26">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m3.jpg" alt="" /> <span>Deadpool</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m4.jpg" alt="" /> <span>Rogue One</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United States</a></td>
											<td class="w3-list-info"><a href="">Action</a></td>
											<td>7.1</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="z" aria-labelledby="z-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>2</span></h4>
									</div>
									<table id="table-breakpoint26">
										<thead>
										  <tr>
											<th>序号</th>
											<th>电影名</th>
											<th>发布时间</th>
											<th>画质</th>
											<th>国家</th>
											<th>分类</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>1</td>
											<td class="w3-list-img"><a href=""><img src="images/m1.jpg" alt="" /> <span>Swiss Army Man</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">United Kingdom</a></td>
											<td class="w3-list-info"><a href="">Comedy, Drama</a></td>
											<td>7.0</td>
										  </tr>
										  <tr>
											<td>2</td>
											<td class="w3-list-img"><a href=""><img src="images/m2.jpg" alt="" /> <span>Me Before you</span></a></td>
											<td>2016</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="">Korea</a></td>
											<td class="w3-list-info"><a href="">Drama</a></td>
											<td>7.5</td>
										  </tr>
										  
										</tbody>
									</table>
								</div>
							</div>
						</div>

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
						   <h4 class="b-log"><a href="index.jsp"><span>M</span>ovies <span>P</span>ro</a></h4>
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
<!-- tables -->
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>

 <script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });
	   $('#table-breakpoint1').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint2').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint3').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint4').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint5').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint6').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint7').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint8').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint9').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint10').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint11').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint12').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint13').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint14').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint15').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint16').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint17').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint18').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint19').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint20').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint21').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint22').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint23').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint24').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint25').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint26').basictable({
        breakpoint: 768
      });
    });
  </script>
<!-- //tables -->


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