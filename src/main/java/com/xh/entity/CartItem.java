package com.xh.entity;

public class CartItem {
	private String bookId;
	private String bookName;
	private Integer count;
	private Double price;
	private Double ddPrice;
	private Double subTotal;//小计
	private Integer status;//状态

	public CartItem() {
		super();
	}
	public CartItem(String bookId, String bookName, Integer count,
                    Double price, Double ddPrice, Double subTotal, Integer status) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.count = count;
		this.price = price;
		this.ddPrice = ddPrice;
		this.subTotal = subTotal;
		this.status = status;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getDdPrice() {
		return ddPrice;
	}
	public void setDdPrice(Double ddPrice) {
		this.ddPrice = ddPrice;
	}
	public Double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(Double subTotal) {
		this.subTotal = subTotal;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "CartItem [bookId=" + bookId + ", cateName=" + bookName
				+ ", count=" + count + ", price=" + price + ", ddPrice="
				+ ddPrice + ", subTotal=" + subTotal + ", status=" + status
				+ "]";
	}
	
	
}