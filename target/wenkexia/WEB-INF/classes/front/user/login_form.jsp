<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登录 - 文客侠</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${path}/front/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${path}/front/css/page_bottom.css" rel="stylesheet" type="text/css" />

	</head>
	<body>


		<%@include file="/front/common/head1.jsp"%>

		<div class="enter_part">

			<%@include file="/front/common/introduce.jsp"%>

			<div class="enter_in">
				<div class="bj_top"></div>
				<div class="center">
					<div style="height: 30px; padding: 5px; color: red" id="divErrorMssage">
					
					</div>
					<div class="main">
						<h3>
							登录文客侠   &emsp;&emsp;&emsp;&emsp;&emsp;<span class="red">${message}</span>
						</h3>

						<form method="post" action="${path}/user/login" id="ctl00">
							<ul>
								<li>
									<span>请输入Email地址：</span>
									<input type="text" name="email" id="txtEmail" class="textbox" />
								</li>
								<li>
									<span class="blank">密码：</span>
									<input type="password" name="password" id="txtPassword" class="textbox" />
								</li>
								<li>
									<input type="submit" id="btnSignCheck" class="button_enter" value="登 录" />
								</li>
							</ul>
							<input type="hidden" name="uri" value="${uri}" />
						</form>
					</div>
					<div class="user_new">
						<p>
							您还不是文客侠用户？
						</p>
						<p class="set_up">
							<a href="${path}/front/user/register_form.jsp">创建一个新用户&gt;&gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<%@include file="/front/common/foot1.jsp"%>

	</body>
</html>

