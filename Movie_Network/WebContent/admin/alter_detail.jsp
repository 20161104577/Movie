<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>增加信息 </title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
</head>
<body>
<!-- banner -->
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>首页</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li>
									<a href="input.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i> 上传 </i></a> 
								</li>
								<li>
									<a href="table.jsp"> <i class="fa fa-table" aria-hidden="true"></i> 用户表 </a>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
                <li class="second logo"><h1><a href="main-page.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i><span>P</span>ili <span>P</span>ili </a></h1></li>
					<li class="second admin-pic">
				       <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/admin.jpg" alt=""> </span> 
											</div>	
										</a>
									</li>
									
						</ul>
				</li>

				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</li>

			</ul>
			<!-- //nav -->
			
		</div>
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->

					<!-- breadcrumbs -->
						<div class="w3l_agileits_breadcrumbs">
							<div class="w3l_agileits_breadcrumbs_inner">
								<ul>
									<li><a href="manage.jsp">首页</a><span>«</span></li>
									<li>用户表 <span>«</span></li>
									<li>上传</li>
								</ul>
							</div>
						</div>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle">上传</h2>
					  <h3><a href="manage.jsp">返回上一页</a></h3>
					  
						<div class="forms-main_agileits">
							
								<div class="graph-form agile_info_shadow">
								 <h3 class="w3_inner_tittle two">Basic Form </h3>
										<div class="form-body">
											<form action="alterFilm?index=${sessionScope.operatefilmform_alter.f_id }&type=second" method="post"> 
												<div class="form-group"> 
													<label for="exampleInputFile">选择电影</label> <input type="file" name="file" id="exampleInputFile"> 
												</div> 
												<div class="form-group"> 
													<label for="exampleInputFile">选择电影海报</label>
													<input type="file" name="exampleInputPicture" id="exampleInputPicture">
													<input type="hidden" name="picture" id="picture"> 
													<button type="button" onclick="uploadImg();" class="btn btn-default">上传</button> 
												</div> 
												<div class="form-group"> 
													<label for="exampleInputPassword1">添加电影名字</label> <input type="Text" name="filename" class="form-control" value="${sessionScope.operatefilmform_alter.f_name }" id="exampleInputFilename" placeholder="">
												 </div>
												<div class="form-group"> 
													<label for="exampleInputDataTime">添加上映时间</label><input type="Text" name="year" class="form-control" value="${sessionScope.operatefilmform_alter.f_year }" id="exampleInputYear" placeholder="输入格式为YYYY-MM-DD">  
												</div> 
												<div class="form-group"> 
													<label for="exampleInputPassword1">添加电影简介</label> <input type="Text" name="brief" class="form-control" value="${sessionScope.operatefilmform_alter.f_brief }" id="exampleInputBrief" placeholder="">
												 </div>
												 <div class="form-group"> 
													<label for="exampleInputPassword1">添加电影国家</label> <input type="Text" name="country" class="form-control"  value="${sessionScope.operatefilmform_alter.f_country }" id="exampleInputCountry" placeholder="">
												 </div>
												<button type="submit"  id="upload" class="btn btn-default">保存</button> 
											</form> 
										</div>

								</div>
						</div> 
				    </div>
					<!-- //inner_content_w3_agile_info-->
				</div>
		<!-- //inner_content-->
	</div>
<!-- banner -->
<!--copy rights start here-->
<div class="copyrights">
	<p>Copyright &copy; 2019.Company name All rights reserved.More Templates 网编第三组</p></div>	
<!--copy rights end here-->
<!-- js -->

          <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		  <script src="js/modernizr.custom.js"></script>
		
		   <script src="js/classie.js"></script>
		  <script src="js/gnmenu.js"></script>
		  <script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		 </script>

<!-- //js -->
<script src="js/screenfull.js"></script>
<script>
$(function () {
	$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

	if (!screenfull.enabled) {
		return false;
	}

	

	$('#toggle').click(function () {
		screenfull.toggle($('#container')[0]);
	});	
});
</script>
<script type="text/javascript">
function uploadImg(){
	var filename = $('#exampleInputPicture').val();
	if (!filename.match(/\.(jpg|jpeg|gif|bmp|png)(\s|\?|$)/i)) {
		alert('只能上传jpg、png、gif文件。');
		return false;
	}
	$.ajaxFileUpload({
		url: "/Movie_Network/AjaxUploadPicture",
		secureuri: false,
		cache: false,
		fileElementId:'exampleInputPicture',
		dataType: "json",
		error: function(rs, status, e){
			alert("错误信息:"+e);
			return false;
		},
		success: function(rs, status){
			alert("cheng");
			if(rs.status == "success"){
				$("#picture").val(rs.url);
				_url = rs.url;
			}else{
				_url = '';
			}
		}
	});
} 
</script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<script src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>