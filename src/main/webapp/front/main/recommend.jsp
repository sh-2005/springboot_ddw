<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<h2>
	编辑推荐
</h2>
<div id=__bianjituijian/danpin>
	<div class=second_c_02>
		<!--编辑推荐图书开始-->
		<c:forEach items="${book}" var="a">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href='${path}/book/selectId?id=${a.id}' target='_blank'>
					<img  class="book-cover" src="https://sh-chuangye.oss-cn-beijing.aliyuncs.com/${a.src}" width=70 border=0 />
				</a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href='${path}/book/selectId?id=${a.id}' target='_blank' title='输赢'>${a.bookName}</a>
				</h3>
				<h4>
					作者：${a.author}著
					<br />
					出版社：${a.company}&nbsp;&nbsp;&nbsp;&nbsp;
					出版时间：<fmt:formatDate pattern="yyyy-MM-dd" value="${a.publishTime}"/>
				</h4>
				<h5>
					${a.contentAbstract}
				</h5>
				<h6>
					定价：${a.price}&nbsp;&nbsp;
					当当价：${a.ddPrice}
					销量：<font color="red">${a.saleCount}</font>
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		</c:forEach>
		<!--编辑推荐图书结束-->
	</div>
</div>
