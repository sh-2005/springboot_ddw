package com.xh.entity;

public class Item {
	private String id;
	private String bookName;//--图书名
	private String bookSrc;//--图片路径
	private double price;//--价格
	private Integer count;//--数量
	private double amount;//--小计
	private String bookId;//--图书id
	private String orderId;//--订单id

	private Book book;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookSrc() {
		return bookSrc;
	}

	public void setBookSrc(String bookSrc) {
		this.bookSrc = bookSrc;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Item() {
	}

	@Override
	public String toString() {
		return "Item{" +
				"id='" + id + '\'' +
				", bookName='" + bookName + '\'' +
				", bookSrc='" + bookSrc + '\'' +
				", price=" + price +
				", count=" + count +
				", amount=" + amount +
				", bookId='" + bookId + '\'' +
				", orderId='" + orderId + '\'' +
				", book=" + book +
				'}';
	}
}
