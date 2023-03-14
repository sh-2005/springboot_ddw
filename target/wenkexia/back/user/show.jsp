<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/back/css/btn.css" />
	</head>
	<body style="background-color: #f0f9fd;">
		<div align=center style="font-size:25px">用户管理</div><hr/>
		<table bordercolor='#898E90' align='center' border='3px' cellpadding='10px' cellspacing="0px">
			<tr bgcolor='lightblue' align='center'>
				<td>Id</td>
				<td>昵称</td>
				<td>邮箱</td>
				<td>状态</td>
				<td>激活码</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${users}" var="u">
				<tr align='center'>
					<td>${u.id}</td>
					<td>${u.nickName}</td>
					<td>${u.email}</td>
					<td><c:if test="${u.status==1}">
						正常
					</c:if>
						<c:if test="${u.status!=1}">
							冻结
						</c:if>
					</td>
					<td>${u.emailCode}</td>
					<td>
						<input class="button" onclick="location.href='${pageContext.request.contextPath}/user/updateStatus?email=${u.email}'" value="修改 &raquo;" />
					</td>
				</tr>
			</c:forEach>
			 
			
		</table>
	</body>  
</html>



