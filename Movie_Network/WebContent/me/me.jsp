<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--  <jsp:include page="../head.jsp"></jsp:include>  --%>
<!-- <script src="js/ajaxfileupload.js"></script> -->

<!--But -> servlet - > dao - > ArrayList -> request -> jsp -> El表达式 JSTL标签 显示  -->
<!DOCTYPE html>

<html lang="en">

    <head>
    
        <meta charset="UTF-8">
        <title>个人中心</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="../css/me_style.css" rel="stylesheet" type="text/css"/>
        <!-- //for-mobile-apps -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="../css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
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
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">首页</a></li>
							
							<li><a href="genre.jsp">分类</a></li>
							<li><a href="news.jsp">资讯</a></li>
							<li><a href="country.jsp">国家</a></li>
							<li><a href="list.jsp">A-Z列表</a></li>
							<li><a href="contact.jsp">联系我们</a></li>
							<li><a href="me/me.jsp">你好，${sessionScope.USERNAME.u_name}</a></li>	
						</ul>

		</div>
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed">
                <a href="../index.jsp" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title"><h3>个人中心</h3></span>
                </div>
            </header>
            <section class="aui-scrollView">
            <form method="post" action="user.html">
                <div class="aui-panel">
                    <a href="javascript:void(0);" class="aui-panel-cell">
                    <!--  -->
                        <div class="aui-panel-cell-hd">
                           <!--  <img src="../images/user-logo.png" alt="">u_avatar -->
                           <!-- <img src="../upload/untitled2.png" alt="">  -->
                           <img src="${sessionScope.USERNAME.u_avatar}" alt="" onchange="upload();">
                        </div>
                       <!--  <form method="post" action="user?type=list"> -->
                       
                        <div class="aui-panel-cell-bd">
                            <h4>${sessionScope.USERNAME.u_name}</h4>
                            <p>${sessionScope.USERNAME.u_email }</p>
                        </div>  
                    </a>
                </div>
                
                <div class="aui-card-list">
                    <div class="divHeight"></div> 
                    <a href="javascript:void(0);" class="aui-panel-cell">
                        <div class="aui-panel-cell-bd">
                            <h4>我的消息</h4>
                        </div>
                    </a>
                    
                    <a href="me_information.jsp" class="aui-panel-cell">
                        <div class="aui-panel-cell-bd">
                            <h4>个人信息</h4>
                        </div>
                    </a>
                    
                    <a href="javascript:void(0);" class="aui-panel-cell aui-clear-border">
                        <div class="aui-panel-cell-bd">
                            <h4>我的收藏</h4>
                        </div>
                    </a>
                  </div>
                  
                <div class="aui-button">
                <a herf="login?type=exit">
                    <button class="aui-btn-out">
                    	退出
                    </button>
                </a>
                </div>
                </form>
            </section>
        </section>
    </body>
</html>
