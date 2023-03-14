package com.xh.entity;

import java.util.Date;


public class User {
	private String id;
	private String nickName;
	private String email;
	private String password;
	private Integer status;//状态
	private String emailCode;
	private Date registTime;//注册时间
	private String salt;
	public User() {
		super();
	}
	public User(String id, String nickName, String email, String password,
                Integer status, Date registTime, String salt, String emailCode) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.email = email;
		this.password = password;
		this.status = status;
		this.registTime = registTime;
		this.salt = salt;
		this.emailCode = emailCode;
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", nickName=" + nickName + ", email=" + email
				+ ", password=" + password + ", status=" + status
				+ ", emailCode=" + emailCode + ", registTime=" + registTime
				+ ", salt=" + salt + "]";
	}
	
}
