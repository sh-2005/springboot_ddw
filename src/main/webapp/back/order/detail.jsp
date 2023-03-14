<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html>
  <head>
    <title>order</title>
	<link rel="stylesheet" href="${path}/back/css/btn.css" />
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
  </head>
  <body style="background-color: #f0f9fd;text-align: center">
  <div align=center style="font-size:25px">订单详细信息</div><hr/>
  	 <table bordercolor='#898E90' align='center' border='3px' cellpadding='5px' cellspacing="0px">
          <tr bgcolor="lightblue" align="center">
			  <td>订单号：${orders.orderNumber}</td>
			  <td colspan="2">订单金额：¥：${orders.totalPrice}</td>
			  <td colspan="2">订单状态：${orders.status}</td>
		  </tr>

		 <c:forEach items="${items}" var="a">
			 <tr align='center'>
				 <td>${a.bookName}</td>
				 <td style="width: 100px;"><img style="width:32px;height: 20px" src="https://sh-chuangye.oss-cn-beijing.aliyuncs.com/${a.book.src}"></td>
				 <td style="width: 180px;">单价：¥${a.book.price}</td>
				 <td style="width: 200px;">当当价：¥ ${a.book.ddPrice }</td>
				 <td style="width: 100px;">${a.count}本</td>
			 </tr>
		 </c:forEach>
          
     </table> 
	<input class="button btn-p" value="返回上级" onclick="history.go(-1);" style="margin-top: 10px"/>
  </body>
</html>
