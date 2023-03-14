<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<title>图书详情</title>
		<link rel="stylesheet" type="text/css" href="${path}/front/css/book_detail.css"/>
		<link href="${path}/front/css/public_footer.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<br/>
		<div>
			<a href="${path}/book/main">回到首页</a>
			<h1>
				丛书名：${book.bookName}
			</h1>
			<hr/>
		</div>
		<table width="80%" border="0" align="center" cellspacing="0" cellpadding="5">
			<tr>
				<td rowspan="9" width="20%" valign="top"><img src="https://sh-chuangye.oss-cn-beijing.aliyuncs.com/${book.src}" width="240px" height="340px" /></td>
				<td colspan="2">作者：${book.author}</td>
			</tr>
			<tr>
				<td colspan="2">出版社：${book.company}</td>

				<tr>
				<td>出版时间：<fmt:formatDate pattern="yyyy-MM-dd" value="${book.publishTime}"/> </td>
				<td>字数：${book.publicCount}</td>
			</tr>
			</tr>
			
			<tr>
				<td>版次：${book.edition}</td>
				<td>页数：${book.pageNum}</td>
			</tr>
			<tr>
				<td>印刷时间：<fmt:formatDate pattern="yyyy-MM-dd" value="${book.printTime}"/></td>
				<td>开本：${book.sizes}</td>
			</tr>
			<tr>
				<td>印次：${book.impression}</td>
				<td>纸张：${book.paper}</td>
			</tr>
			<tr>
				<td>ISBN：${book.isbn}</td>
				<td>销量：<font color="red">${book.saleCount}</font></td>
			</tr>
			
			<tr>
				<td colspan="2">定价：￥${book.price}&nbsp;&nbsp;&nbsp;&nbsp;
				<font color="red">当当价：￥${book.ddPrice}</font>&nbsp;&nbsp;&nbsp;&nbsp;
				节省：￥${book.price-book.ddPrice}</td>
			</tr>
			
			<tr>
			
				<td colspan="2">
					<c:if test="${book.stock>0}">
					<a href="${path}/cart/insert?id=${book.id}">
					<img src='${path}/front/images/buttom_goumai.gif' />
								</a>
					</c:if>
					<c:if test="${book.stock<0}">
						该商品暂时无货，非常抱歉！
					</c:if>
				</td>
			</tr>
		
		</table>
		
		<hr style="border:1px dotted #666"/>
		<h2>编辑推荐</h2>
		<p>${book.recommend}</p>
		<hr style="border:1px dotted #666"/>
		<h2>内容简介</h2>
		<p>${book.contentAbstract}</p>
		<hr style="border:1px dotted #666"/>
		<h2>作者简介</h2>
		<p>${book.authorAbstract}</p>
		<hr style="border:1px dotted #666"/>
		<h2>目录</h2>
		<p>${book.director}</p>
		<hr style="border:1px dotted #666"/>
		<h2>媒体评论</h2>
		<p>${book.mediaCommentary}</p>

		<!--页尾开始 -->
		
		<div class="public_footer">
			<div class="public_footer_bottom">
				<div class="public_footer_icp" style="line-height: 48px;">
					Copyright (C) 文客侠 2004-2008, All Rights Reserved
					<a href="#" target="_blank"><img src="${path}/front/images/bottom/validate.gif" border="0" align="middle" /> </a>
					<a href="#" target="_blank" style="color: #666;">京ICP证041189号</a>
				</div>
			</div>
		</div>
		<!--页尾结束 -->
	</body>
</html>
