<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--  <jsp:include page="../head.jsp"></jsp:include>  --%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>修改密码</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="../css/me_style.css" rel="stylesheet" type="text/css"/>
        <script type = "text/javascript" src="js/jquery.js"></script>
        <script type = "text/javascript" src="js/common.js"></script>
        <!-- <script type="text/javascript"></script> -->

        
        
    </head>
    <body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("input[name='u_pwd']").blur(verifyPwd);
});
function verifyPwd(){	
	$.ajax({
		url:"${pageContext.request.contextPath}/verifyPwd",
		type:"post",
		data:{
			u_pwd:$("input[name='u_pwd']").val(),
			u_id:$("input[name='u_id']").val(),
		},
		dataType:"json",
		cache:false,
		success:function(msg){
			//alert(msg.isSuccess);
			 if(msg.isSuccess){
				$("#show").html("");
				$("#show").show();
			}else{
				$("#show").html("密码1不正确");
				$("#show").show();
				//alert("密码不正确");
			} 
		}
	}); 
}
$(function(){
	$("input[name='u_pwd2']").blur(verifyPwdTwo);
});
function verifyPwdTwo(){	
	$.ajax({
		url:"${pageContext.request.contextPath}/verifyPwdTwo",
		type:"post",
		data:{
			u_pwd2:$("input[name='u_pwd2']").val(),
			u_pwd1:$("input[name='u_pwd1']").val(),
		},
		dataType:"json",
		cache:false,
		success:function(msg){
			if(msg.isSuccess){
				$("#show2").html("");
				$("#show2").show();
			}else{
				$("#show2").html("两次密码不一致");
				$("#show2").show();
				//alert("密码不正确");
			}
		}
	}); 
}
</script>
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed">
                <a href="me.jsp" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title">修改密码</span>
                </div>
            </header>
            <div class="aui-panel"></div>
            <section class="aui-scrollView">
            <form id="pwd_form" action="user.pwd?type=upwd">
                <div class="aui-panel">
					
                        <div class="aui-panel-cell-bh">
                            <h4>请输入旧密码</h4>
                        </div>
                        
                        <div class="aui-panel"></div>
                        
                        <div class="aui-panel-cell-bd">
                            <h4>
                            <input type="text"  id="password" name="u_pwd" placeholder="请输旧入密码" autocomplete="off">
                            </h4>
                        </div>
                        <p style="display:none; color:red; font-size:12px;" id="show" name="show"></p>
        
                </div>
                <div class="divHeight"></div>
                <div class="aui-card-list">
                 <div class="aui-panel">
					
                        <div class="aui-panel-cell-bh">
                            <h4>请输入新密码</h4>
                        </div>
                        
                        <div class="aui-panel"></div>
                        
                        <div class="aui-panel-cell-bd">
                            <h4>
                            <input type="text"  id="password1" name="u_pwd1" placeholder="请输新入密码" autocomplete="off">
                            </h4>
                        </div>
        
                </div>
                <div class="divHeight"></div>
                <div class="aui-card-list">
                 <div class="aui-panel">
					
                        <div class="aui-panel-cell-bh">
                            <h4>请输再次入新密码</h4>
                        </div>
                        
                        <div class="aui-panel"></div>
                        
                        <div class="aui-panel-cell-bd">
                            <h4>
                            <input type="text"  id="password2" name="u_pwd2" placeholder="请输新入密码" autocomplete="off">
                            </h4>
                        </div>
        			<p style="display:none; color:red; font-size:12px;" id="show2" name="show2"></p>
                </div>
                <div>
                	<input type = "hidden" name="u_id" id = "u_id" value = ${sessionScope.USERNAME.u_id }>
                </div>
                <div class="aui-button">
                    <button class="aui-btn-out">确定</button>
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