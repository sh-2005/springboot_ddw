<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
  <head>
    <title>menu.html</title>	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=GBK">
   	<style>
   		.aa{
   			height: 32px;
   			line-height:32px;
   			margin:0 auto;
   			width:150px;
   			margin-bottom:12px;
   			border:1px solid #b3d8ff;
			background: #ecf5ff;
   			border-radius:6px;
   		}
   		.aa a{
   			color:#409eff;
   		}
    </style>
    <script type="text/javascript" src="${path}/js/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".aa").click(function(){
				$(".aa").css({"background":"#ecf5ff","border-color":"#b3d8ff"});
				$(".aa a").css("color","#409eff");
				$(this).css({"background": "#409eff","border-color": "#409eff"});
				$(this).children("a").css("color","#fff");			
			});
		});
	</script>
    
  </head>
  
  <body style="text-align: center;background-color: #d4e7f0">  <!-- #f0f9fd -->
  	
   	<h4>系统主菜单</h4><hr/><br/>
   	<div style="text-align: center" class="div1">
   		<div class="aa">
			<a style="text-decoration: none;" href="${path}/category/findAll" target="Homepage">类别管理</a><br/><br/>
		</div>
		<div class="aa">
  			<a style="text-decoration: none;" href="${path}/book/queryAll"  target="Homepage">图书管理</a><br/><br/>
  		</div>
  		<div class="aa">
  			<a style="text-decoration: none;" href="${path}/order/queryAll"  target="Homepage">订单管理</a><br/><br/>
  		</div>
  		<div class="aa">
  			<a style="text-decoration: none;" href="${path}/user/findAll" target="Homepage">用户管理</a><br/><br/>
  		</div>
  	</div>
  </body>
</html>
