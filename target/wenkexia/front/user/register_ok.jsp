<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 文客侠</title>
		<link href="${path}/front/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${path}/front/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			注册步骤: 1.填写信息 > 2.验证邮箱 >
			<span class="red_bold">3.注册成功</span>
		</div>


		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
					<img src="${path}/front/images/login_success.jpg" />
				</div>
				<h5>
					${user.nickName}，欢迎加入文客侠
				</h5>
				<h6>
					请牢记您的登录邮件地址：${user.email}
				</h6>

				<ul>
					<li class="nobj">
						您现在可以：
					</li>
					<li>

					<li>
					<a href="${path}/book/main">浏览并选购商品</a>
					</li>
				</ul>
			</div>
		</div>

		<%@include file="../common/foot1.jsp"%>
	</body>
</html>

