<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>用户注册 - 文客侠</title>
	<link href="${path}/front/css/login.css" rel="stylesheet" type="text/css" />
	<link href="${path}/front/css/page_bottom.css" rel="stylesheet" type="text/css" />
	<script src="${path}/front/js/jquery-1.8.3.min.js"></script>
	<script >
        $(function(){


            $("#f").submit(function () {
                $.get("${pageContext.request.contextPath}/user/zhuce",$("#f").serialize(),function (res) {
                    if (res.success){
                        alert(res.msg)
                        location.href="${path}/front/user/register_ok.jsp";
                    }else {
                        alert(res.msg)
                    }
                },"JSON")
                return false;
            })

            var emailisOk=false;
            var nameisOk=false;
            var passwordisOk=false;

            //邮箱
            $("#email").blur(function(){
                //获取input内容
                var email=$("#email").val();
                //判断邮箱是否输入
                if(email!=""){
                    //正则验证邮箱
                    var emails = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
                    //判断格式是否正确
                    if(emails.test(email)){
                        $("#emailMsg").html("<font style='color:green'><strong>验证成功√</strong></font>");
                        emailisOk=true;
                    }else{
                        $("#emailMsg").html("<font style='color:red'><strong>邮箱格式错误</strong></font>");
                    }
                }else{
                    $("#emailMsg").html("<font style='color:red'><strong>邮箱必填</strong></font>");
                }
            });

            //昵称
            $("#txtNickName").blur(function(){
                //获取input内容
                var nickName=$("#txtNickName").val();
                //判断邮箱是否输入
                if(nickName!=""){
                    //判断格式是否正确
                    if(nickName.length<4){
                        $("#nameMsg").html("<font style='color:red'><strong>昵称不少于4位</strong></font>");
                    }else{
                        $("#nameMsg").html("<font style='color:green'><strong>验证成功√</strong></font>");
                        nameisOk=true;
                    }
                }else{
                    $("#nameMsg").html("<font style='color:red'><strong>昵称必填</strong></font>");
                }
            });


            //密码
            $("#txtPassword").blur(function(){
                //获取input内容
                var password=$("#txtPassword").val();
                //判断邮箱是否输入
                if(password!=""){
                    //判断格式是否正确
                    if(password.length<6){
                        $("#passwordMsg").html("<font style='color:red'><strong>密码不小于6位</strong></font>");
                    }else{
                        $("#passwordMsg").html("<font style='color:green'><strong>验证成功√</strong></font>");
                        passwordisOk=true;
                    }
                }else{
                    $("#passwordMsg").html("<font style='color:red'><strong>密码必填</strong></font>");
                }
            });



            //绑定单击事件
            $("#code").click(function(){
                $("#code").attr("src","${path}/user/creatImg?d="+new Date().getTime());
            });

            //绑定单击事件
            $("#changeImg").click(function(){
                $("#changeImg").attr("src","${path}/user/creatImg?d="+new Date().getTime());
            });


        });


	</script>
</head>
<body>
<%@include file="/front/common/head1.jsp"%>
<div class="login_step">
	注册步骤:
	<span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功
</div>
<div class="fill_message">
	<form name="ctl00" method="post" action="${path}/user/zhuce" id="f">
		<h2>
			以下均为必填项    <font style="color:red">${message}</font>
		</h2>
		<table class="tab_login" >
			<tr>
				<td valign="top" class="w1">
					请填写您的Email地址：
				</td>
				<td>
					<input id="email" name="email" type="text" class="text_input"/>
					<div class="text_left" id="emailValidMsg">
						<p>
							请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。
						</p>
						<span id="emailMsg"  />
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top" class="w1">
					设置您在文客侠的昵称：
				</td>
				<td>
					<input name="nickName" type="text" id="txtNickName" class="text_input" />
					<div class="text_left" id="nickNameValidMsg">
						<p>
							您的昵称可以由小写英文字母、中文、数字组成，
						</p>
						<p>
							长度4－20个字符，一个汉字为两个字符。
						</p>
						<span id="nameMsg" />
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top" class="w1">
					设置密码：
				</td>
				<td>
					<input name="password" type="password" id="txtPassword" class="text_input" />
					<div class="text_left" id="passwordValidMsg">
						<p>
							您的密码可以由大小写英文字母、数字组成，长度6－20位。
						</p>
						<span id="passwordMsg" />
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top" class="w1">
					再次输入您设置的密码：
				</td>
				<td>
					<input name="" type="password" id="txtRepeatPass" class="text_input" onblur="checkPassword1()"/>
					<script type="text/javascript">

                        function checkPassword1(){
                            var password1 = $("#txtRepeatPass").val();
                            //获取第一次输入的密码
                            var password = $("#txtPassword").val();
                            if(password == password1){
                                $("#password1Info").html("<img width='15px' src='${path}/front/images/label3.gif'/>   <font color='green'>两次输入的密码一致！</font>");
                                return true;
                            }else{
                                $("#password1Info").html("<img width='15px' src='${path}/front/images/wrong.gif'/>   <font color='red'>两次输入的密码不一致！</font>");
                                return false;
                            }
                        };
					</script>

					<div class="text_left" id="repeatPassValidMsg">
						<span id="password1Info" style="color:red"></span>
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top" class="w1">
					验证码：
				</td>
				<td>
					<img class="yzm_img" id='code' src="${path}/user/creatImg" />
					<input name="ServerCode" type="text" id="txtVerifyCode" class="yzm_input"/>
					<div class="text_left t1">
						<p class="t1">
							<span id="vcodeValidMsg">请输入图片中的四个字母。</span>
							<span id="number.info" style="color:red"></span>
							<a id="changeImg" name="change_code_link" class="code_picww" href="">换张图</a>
						</p>
					</div>
				</td>
			</tr>
		</table>

		<div class="login_in">

			<input id="btnClientRegister" class="button_1" name="submit"  type="submit" value="注 册"/>
		</div>
	</form>
</div>
<%@include file="/front/common/foot1.jsp"%>
</body>
</html>

