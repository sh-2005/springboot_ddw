<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<style>
.btn-logout {
	display: inline-block;
	width: 120px;
	height: 36px;
	text-align: center;
	line-height: 36px;
	border-radius: 10px;
	border: 1px solid #fbc4c4;
	color: #f56c6c;
	background: #fef0f0;
	cursor: pointer;
}
.btn-logout:hover {
	background: #f56c6c;
	border-color: #f56c6c;
	color: #fff;
}
html,body{
	margin: 0;
	padding: 0;
}
</style>
</head>

<body style="text-align:center;font-family:'KaiTi';">
	<div style="opacity:0.6;background-image: url('../img/aaa.png');background-size:100% auto;background-size: cover;height:149.6px;position:absolute;width:100%;z-index:-1"></div>
	<div style="padding-top: 8px;">

		<div style="position:absolute;right:24px;">
			<div onclick="window.parent.location.href='${path}/admin/tuichu'" class="btn-logout">安全退出</div>
		</div>
		<div style="font-size:24px;line-height:36px;position:absolute;right:162px;color:#d74b4b">当前管理员:</div>
		<h1 style="padding-top:28px;">文客侠后台管理系统</h1>
	</div>
</body>
</html>