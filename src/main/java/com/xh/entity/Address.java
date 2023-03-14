package com.xh.entity;

import java.util.Objects;

public class Address {
/*create table d_address  (
   id                   VARCHAR2(40)                    not null,
   name                 VARCHAR2(20),  --姓名
   detail               VARCHAR2(20),  --地址
   zip_code             VARCHAR2(20),  --邮编
   phone                VARCHAR2(20),  --手机
   user_id              VARCHAR2(40),  --用户id
   constraint PK_D_ADDRESS primary key (id)
);*/
	private String id;
	private String name;
	private String detail;
	private String zipCode;
	private String phone;
	private String telphone;
	private String userId;
	public Address() {
		super();
	}
	public Address(String id, String name, String detail, String zipCode,
                   String phone, String telphone, String userId) {
		super();
		this.id = id;
		this.name = name;
		this.detail = detail;
		this.zipCode = zipCode;
		this.phone = phone;
		this.telphone = telphone;
		this.userId = userId;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", name=" + name + ", detail=" + detail
				+ ", zipCode=" + zipCode + ", phone=" + phone + ", telphone="
				+ telphone + ", userId=" + userId + "]";
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Address address = (Address) o;
		return Objects.equals(id, address.id) &&
				Objects.equals(name, address.name) &&
				Objects.equals(detail, address.detail) &&
				Objects.equals(zipCode, address.zipCode) &&
				Objects.equals(phone, address.phone) &&
				Objects.equals(telphone, address.telphone) &&
				Objects.equals(userId, address.userId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, name, detail, zipCode, phone, telphone, userId);
	}
}
