package com.xh.util;

import java.util.Properties;
 
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import org.apache.commons.lang3.RandomStringUtils;
 
/**
 * @Description
 *      username  为发送用户的登录账号
 *      password  为发送用户的登录密码
 */
public class SendEmailUtil {
	public static String username = "sh986555910@163.com";  //邮箱账号
	private static String password = "IKPUCDAWYVSJUWWV";  //授权码

	//发送邮件  参数：接收的邮箱,发送的内容
	public static void sendMessage(String email,String message){
		//构建会话对象   包括会话类型   和 会话账号密码
		Properties props = System.getProperties();
		//设置主机类型
		props.setProperty("mail.smtp.host", "smtp.163.com");
		Session session = Session.getDefaultInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		}); 
		session.setDebug(true);
		//构建 会话内容
		MimeMessage mimeMessage = new MimeMessage(session);
		try {
			//设置发送地址
			InternetAddress fromAddress = new InternetAddress(username);
			mimeMessage.setFrom(fromAddress);
			//设置接收人
			InternetAddress reciAddress = new InternetAddress(email);
			mimeMessage.setRecipient(RecipientType.TO, reciAddress);
			//设置邮件的头
			mimeMessage.setSubject("文客侠验证码！");
			mimeMessage.setContent(message, "text/plain;charset=UTF-8");
			//构建连接
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.163.com",username, password);
			transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("send Message fail!");
			e.printStackTrace();
		} 
	}

	//生成随机的盐
	public static  String  getRandom(int n){
		char[] code =  "0123456789".toCharArray();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < n; i++) {
			sb.append(code[new Random().nextInt(code.length)]);
		}
		return sb.toString();
	}
	public static void sendEmailCode(String email,String code) {
		String context="【文客侠】您好，您当前正在进行文客侠的注册，您的验证码为："+code+"。为了给您提供更好的服务，请您尽快完成注册。！";
		//参数    要接收邮件的邮箱 ,发送的内容
		sendMessage(email,context);	
	}


 
}