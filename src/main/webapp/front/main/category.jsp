<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		
		<!--1级分类开始-->
		<c:forEach items="${category}" var="c">
			<div class="bg_old" onmouseover="this.className = 'bg_white';"
				onmouseout="this.className = 'bg_old';">
				<h3>
					[<a href='${path}/category/findOneLevels?cid=${c.id}&pageNow=1'>${c.cateName}</a>]
				</h3>
				<ul class="ul_left_list">

						<!--2级分类开始-->
						<c:forEach items="${c.categoryList}" var="s">
						<li>
							<a href='${path}/category/findOneLevels?cid=${s.parentId}&sid=${s.id}&pageNow=1'>${s.cateName}</a>
						</li>
						</c:forEach>
						<!--2级分类结束-->

				</ul>
				<div class="empty_left">
				</div>
			</div> 

			<div class="more2">
			</div>
		</c:forEach>	
		<!--1级分类结束-->
		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
