<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>登录 - 文客侠</title>
		<script type="text/javascript" src="${path}/back/js/jquery-3.3.1.js"></script>
		<script type="text/javascript">
			window.parent.location.href='${path}/back/login.jsp'
		</script>
	</head>
	<body>
	
	</body>
</html>