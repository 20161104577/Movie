<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--  <jsp:include page="../head.jsp"></jsp:include>  --%>
<script src="js/ajaxfileupload.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>修改昵称</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="../css/me_style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed">
                <a href="me.jsp" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title">修改昵称</span>
                </div>
            </header>
            <div class="aui-panel"></div>
            <section class="aui-scrollView">
            <form id="name_form" action="user.apk?type=ur">
                <div class="aui-panel">
					
                       	<div class="aui-panel-cell-bh">
                            <h4>旧昵称</h4>
                        </div>
                        
                        <div class="aui-panel"></div>
                        
                        <div class="aui-panel-cell-bd">
                            <h4>${sessionScope.USERNAME.u_name }</h4>
                        </div>
        
                </div>
                <div class="aui-panel">
                	<div class="aui-card-list">
					
                        <div class="aui-panel-cell-bh">
                            <h4>新昵称</h4>
                        </div>
                
                        <div class="aui-panel"></div>
                        
                        <div class="aui-panel-cell-bd">
                            <h4>
                            <%-- <input type="text" class="form-control" value="${a.u_id }" name="u_id" id="u_id"  autocomplete="off"> --%>
                            <input type="text" class="form-control" value="" name="u_name" id="u_name" placeholder="请输入新昵称" autocomplete="off">
                            </h4>
                        </div>
  					</div>
                </div>
                <div>
                	<input type = "hidden" name="u_id" id = "u_id" value = ${sessionScope.USERNAME.u_id }>
                </div>
                <div class="aui-button">
                    <button class="aui-btn-out" type="submit">确定</button>
                </div>
               </form>  
               <div class="aui-button">
            	<a href="me.jsp">
              		<button class="aui-btn-out">取消</button>
             	</a>
          	</div>   
            </section>
        </section>
       </body>
       </html>
