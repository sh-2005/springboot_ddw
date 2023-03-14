<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="${path}/front/css/book_head090107.css" rel="stylesheet" type="text/css" />
<div class="head_container">
	<div class="head_welcome">
		<div class="head_welcome_right">
			<span class="head_welcome_text"> </span>
			<span class="head_welcome_text"> 
				<span class="little_n">

					<a href="#" name="helpcenter" class="head_black12a" target="_blank">帮助</a>| 
				</span> 
			</span>
			<div class="cart gray4012">
				<a href="${path}/front/cart/cart_list.jsp">购物车</a>
			</div>
		</div>
		<span class="head_toutext" id="logininfo">
		<c:if test="${user.status==1}">
		<b>您好，<font style="color:red">${user.nickName}</font>欢迎光临文客侠</b>
			[&nbsp;<a href="${path}/user/logout" class="b">登出</a>&nbsp;]
		</c:if>
		<c:if test="${user.status==null}">
			[&nbsp;<a href="${path}/front/user/login_form.jsp" class="b">登录</a>|
			<a href="${path}/front/user/register_form.jsp" class="b">注册</a>&nbsp;]
		</c:if>
		</span>
	</div>
	<div class="head_head_list">
		<div class="head_head_list_left">
			<span class="head_logo">
				<a href="#" name="backtobook">
					<img src="${path}/front/images/booksaleimg/book-logo.gif" />
				</a>
			</span>
		</div>
		<div class="head_head_list_right">
			<div class="head_head_list_right_b"></div>
		</div>
	</div>
	<div class="head_search_div">

	</div>
	<div class="head_search_bg"></div>
</div>
