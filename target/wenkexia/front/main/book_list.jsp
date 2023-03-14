<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>文客侠图书 – 全球最大的中文网上书店</title>
		<link href="${path}/front/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${path}/front/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${path}/front/css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="${path}/front/css/list.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${path}/front/js/prototype-1.6.0.3.js"></script>
	</head>
	<body>
		&nbsp;

		<!-- 头部开始 -->
		<%@include file="/front/common/head.jsp"%>
		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="${path}/front/images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href='${path}/book/main'>文客侠图书</a> &gt;&gt;
			<font style='color: #cc3300'><strong>${categorys.cateName}</strong> </font>
			<c:forEach items="${categorys.categoryList}" var="c">
				<c:if test="${sid == c.id}">
					&gt;&gt;<font style='color: #cc3300'><strong>${c.cateName}</strong></font>
				</c:if>
			</c:forEach>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										<c:if test="${sid == null}">
										<a href='${path}/category/findOneLevels?cid=${cid}&pageNow=1'>
										<font style='color: #cc3300'>
											<strong>&middot;

												全部&nbsp;

											</strong>
										</font>
											</a>
										</c:if>
										<c:if test="${sid !=null}">
											<a href='${path}/category/findOneLevels?cid=${cid}&pageNow=1'>
										<font>
										<strong>&middot;
												全部&nbsp;
												</strong></font>
												</a>
										</c:if>
									</div>
								</div>
							</li>
							<div class="clear"></div>
							<!--2级分类开始-->
							<c:forEach items="${categorys.categoryList}" var="a">
								<c:if test="${sid==a.id}">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei>
										<a href="${path}/category/findOneLevels?cid=${cid}&sid=${a.id}&pageNow=1">
											<font style='color: #cc3300'>
												<strong>${a.cateName}&nbsp;</strong>
											</font>
										</a>
									</div>
								</div>
							</li>
								</c:if>
						    <div class="clear"></div>


						    <c:if test="${sid!=a.id}">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei>
										<a href="${path}/category/findOneLevels?cid=${cid}&sid=${a.id}&pageNow=1">
											<font>
												<strong>${a.cateName}&nbsp;</strong>
											</font>
										</a>
									</div>
								</div>
							</li>
							</c:if>
						    <div class="clear"></div>

							</c:forEach>
							<!--2级分类结束-->
							
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						<select onchange='' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">
								按上架时间 降序
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">

							<!--分页导航开始-->
							<!--回到第一页-->
							<c:if test="${pageNow!=1}">
								<!-- 红色左箭头 -->
								<div class='list_r_title_text3a'>
									<a name=link_page_next href="${path}/category/findOneLevels?pageNow=1&cid=${cid}<c:if test='${sid!=null}'>&sid=${sid}</c:if>">
										<img src='${path}/front/images/page_up.gif' /> 
									</a>
								</div>
							</c:if>
							
							<!--当前页为第一页时展示灰色左箭头-->
							<c:if test="${pageNow==1}">
								<!-- 灰色左箭头 -->
								<div class='list_r_title_text3a'>
									<img src='${path}/front/images/page_up_gray.gif' />
								</div>
							</c:if>

							<!--当前页为第一页时展示灰色左箭头-->
							<c:if test="${pageNow==1}">
								<!-- 灰色左箭头 -->
								<div class='list_r_title_text3a'>
									<img src='${path}/front/images/page_up_gray.gif' />
								</div>
							</c:if>

							<!--当前页不为第一页时展示红色左箭头-->
							<c:if test="${pageNow!=1}">
								<!-- 红色左箭头 -->
								<div class='list_r_title_text3a'>
									<a name=link_page_next href="${path}/category/findOneLevels?pageNow=${pageNow-1}&cid=${cid}<c:if test='${sid!=null}'>&sid=${sid}</c:if>">
										<img src='${path}/front/images/page_up.gif' /> 
									</a>
								</div>
							</c:if>
				
							<div class='list_r_title_text3b'>
								第${pageNow}页/共${pageTotal}页
							</div>
							
							<!--当前页不是最后一页时展示红色右箭头-->
							<c:if test="${pageNow<pageTotal}">
								<!-- 红色右箭头 -->
								<div class='list_r_title_text3a'>
									<a name=link_page_next href="${path}/category/findOneLevels?pageNow=${pageNow+1}&cid=${cid}<c:if test='${sid!=null}'>&sid=${sid}</c:if>">
										<img src='${path}/front/images/page_down.gif' /> 
									</a>
								</div>
							</c:if>
							
							<!--当前页是最后一页时展示灰色右箭头-->
							<c:if test="${pageNow==pageTotal}">
								<!-- 灰色右箭头 -->
								<div class='list_r_title_text3a'>
									<img src='${path}/front/images/page_down_gray.gif' />
								</div>
							</c:if>
							
							<!--当前页不是最后一页时展示红色右箭头-->
							<c:if test="${pageNow<pageTotal}">
								<!-- 红色右箭头 -->
								<div class='list_r_title_text3a'>
									<a name=link_page_next href="${path}/category/findOneLevels?pageNow=${pageTotal}&cid=${cid}<c:if test='${sid!=null}'>&sid=${sid}</c:if>">
										<img src='${path}/front/images/page_down.gif' /> 
									</a>
								</div>
							</c:if>
							
							<!--当前页是最后一页时展示灰色右箭头-->
							<c:if test="${pageNow==pageTotal}">
								<!-- 灰色右箭头 -->
								<div class='list_r_title_text3a'>
									<img src='${path}/front/images/page_down_gray.gif' />
								</div>
							</c:if>
							<!--分页导航结束-->
						</div>
					</div>
					<!--商品条目开始-->
					<c:forEach items="${books}" var="c">
						<div class="list_r_line"></div>
						<div class="clear"></div>
							<div class="list_r_list">
								<span class="list_r_list_book">
									<a name="link_prd_img" href='${path}/book/selectId?id=${c.id}	'>
										<img src="https://sh-chuangye.oss-cn-beijing.aliyuncs.com/${c.src}"/>
									</a>
								</span>
								<h2>
									<a name="link_prd_name" href='${path}/book/selectId?id=${c.id}'>${c.bookName}</a>
								</h2>
								<h3>
									顾客评分：100
								</h3>
								<h4 class="list_r_list_h4">
									作 者:
									<a href='#' name='作者'>${c.author}</a>
								</h4>
								<h4>
									出版社：
									<a href='#' name='出版社'>${c.company}</a>
								</h4>
								<h4>
									出版时间：<fmt:formatDate pattern="yyyy-MM-dd" value="${c.publishTime}"/>
								</h4>
								<h5>
									${c.contentAbstract}
								</h5>
								<div class="clear"></div>
								<h6>
									<span class="del">￥${c.price}</span>
									<span class="red">￥${c.ddPrice}</span>
									节省：￥${c.price-c.ddPrice}
								</h6>
								<span class="list_r_list_button">
										<c:if test="${c.stock>0}">
											<a href="${path}/cart/insert?id=${c.id}">
											<img src='${path}/front/images/buttom_goumai.gif' />
											</a>
											</c:if>
											<c:if test="${c.stock<0}">
												该商品暂时无货，非常抱歉！
											</c:if>

								<span id="cartinfo"></span>
							</div>
						<div class="clear"></div>
						</c:forEach>
						<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="/front/common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
