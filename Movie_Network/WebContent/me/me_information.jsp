<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>个人信息</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="../css/me_style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <script type="text/javascript">
    
    </script>
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed">
                <a href="me.jsp" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title">个人信息</span>
                </div>
            </header>
            <section class="aui-scrollView">
                <div class="aui-panel">
                    
                    <!-- 头像 -->
                        <div class="aui-panel-cell-hd">
                         <img  id="img_2"  src="${sessionScope.USERNAME.u_avatar}">
                        </div>
                    
                </div>
                <div class="divHeight"></div>
                <div class="aui-card-list">
                    <div class="divHeight"></div> 
                    <a href="javascript:void(0);" class="aui-panel-cell">
                        <div class="aui-panel-cell-bd">
                            <h4>邮箱</h4>
                            <div class="aui-panel-cell-fr">${sessionScope.USERNAME.u_email }
                        </div>
                        </div>
                        <div class="aui-panel-cell-fr"></div>
                    </a>
                    <a href="me_name_modify.jsp" class="aui-panel-cell">
                        <div class="aui-panel-cell-bd">
                            <h4>昵称</h4>
                            <div class="aui-panel-cell-fr">${sessionScope.USERNAME.u_name }</div>
                        </div>
                        <div class="aui-panel-cell-fr"></div>
                    </a>
                    <a href="me_pwd_modify.jsp" class="aui-panel-cell aui-clear-border">
                        <div class="aui-panel-cell-bd">
                            <h4>密码</h4>
                            <div class="aui-panel-cell-fr">点击修改
                        </div>
                        </div>
                        <div class="aui-panel-cell-fr"></div>
                    </a>
                <div class="aui-button">
                 <a href="me.jsp">
                    <button class="aui-btn-out">返回</button>
                    </a>
                </div>
            </section>
        </section>
    </body>
</html>
