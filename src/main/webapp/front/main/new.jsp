<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>最新上架图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<c:forEach items="${newList}" var="a">
	<div class="second_d_wai">
		<div class="img">
			<a href="${path}/book/selectId?id=${a.id}" target='_blank'>
				<img class="book-cover" src="https://sh-chuangye.oss-cn-beijing.aliyuncs.com/${a.src}" border=0 />
			</a>
		</div>
		<div class="shuming">
			<a href="${path}/book/selectId?id=${a.id}" target="_blank">${a.bookName}</a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			定价：￥${a.price}
		</div>
		<div class="price">
			当当价：￥${a.ddPrice}
		</div>
		<div class="price">
			销量：<font color="red">${a.saleCount}</font>
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	</c:forEach>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>