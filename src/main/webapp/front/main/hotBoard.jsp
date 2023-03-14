<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
	<h2 class="t_xsrm">
		新书热卖榜
	</h2>
	<div id="NewProduct_1_o_t" onmouseover="">
	<!--新书热卖图书开始-->
	<c:forEach items="${newHotList}" var="a">
	<ul>
		<li>&nbsp;&nbsp;&nbsp;
			<a  target='_blank' class="book-cover" href="${path}/book/selectId?id=${a.id}">
				${a.bookName}
			</a>
		</li>
	</ul>
	</c:forEach>
	<!--新书热卖图书结束-->
	<h3 class="second">
		<span class="dot_r"> </span><a href="#" target="_blank">更多&gt;&gt;</a>
	</h3>
</div>