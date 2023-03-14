package com.xh.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Book {
    private String id;
    private String bookName;   //--图书名
    private String author;      //--作者
    private double price;//--价格
    private double ddPrice;//--当当价
    private String company;//--出版社
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishTime;  //--出版时间
    private String publicCount;//--出版字数
    private String isbn;//--isbn编码
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date printTime;// --打印时间
    private Integer saleCount;//--销售量
    private String cateId;//--所属类别
    private String recommend;//--编辑推荐度
    private String src;// --封面图片路径
    private Integer stock;//库存
    private String contentAbstract;//内容简介
    private String authorAbstract;//作者简介
    private String director;//基本目录
    private String mediaCommentary;//媒体评论
    private String paper;//纸张
    private String pack;//包装
    private String sizes;//开本
    private String pageNum;//页数
    private String impression;//印次
    private String edition;//版次

    private Category category;


    @Override
    public String toString() {
        return "Book{" +
                "id='" + id + '\'' +
                ", bookName='" + bookName + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", ddPrice=" + ddPrice +
                ", company='" + company + '\'' +
                ", publishTime=" + publishTime +
                ", publicCount='" + publicCount + '\'' +
                ", isbn='" + isbn + '\'' +
                ", printTime=" + printTime +
                ", saleCount=" + saleCount +
                ", cateId='" + cateId + '\'' +
                ", recommend='" + recommend + '\'' +
                ", src='" + src + '\'' +
                ", stock=" + stock +
                ", contentAbstract='" + contentAbstract + '\'' +
                ", authorAbstract='" + authorAbstract + '\'' +
                ", director='" + director + '\'' +
                ", mediaCommentary='" + mediaCommentary + '\'' +
                ", paper='" + paper + '\'' +
                ", pack='" + pack + '\'' +
                ", sizes='" + sizes + '\'' +
                ", pageNum='" + pageNum + '\'' +
                ", impression='" + impression + '\'' +
                ", edition='" + edition + '\'' +
                ", category=" + category +
                '}';
    }

    public Book(String id, String bookName, String author, double price, double ddPrice, String company, Date publishTime, String publicCount, String isbn, Date printTime, Integer saleCount, String cateId, String recommend, String src, Integer stock, String contentAbstract, String authorAbstract, String director, String mediaCommentary, String paper, String pack, String sizes, String pageNum, String impression, String edition, Category category) {
        this.id = id;
        this.bookName = bookName;
        this.author = author;
        this.price = price;
        this.ddPrice = ddPrice;
        this.company = company;
        this.publishTime = publishTime;
        this.publicCount = publicCount;
        this.isbn = isbn;
        this.printTime = printTime;
        this.saleCount = saleCount;
        this.cateId = cateId;
        this.recommend = recommend;
        this.src = src;
        this.stock = stock;
        this.contentAbstract = contentAbstract;
        this.authorAbstract = authorAbstract;
        this.director = director;
        this.mediaCommentary = mediaCommentary;
        this.paper = paper;
        this.pack = pack;
        this.sizes = sizes;
        this.pageNum = pageNum;
        this.impression = impression;
        this.edition = edition;
        this.category = category;
    }

    public String getContentAbstract() {
        return contentAbstract;
    }

    public void setContentAbstract(String contentAbstract) {
        this.contentAbstract = contentAbstract;
    }

    public String getAuthorAbstract() {
        return authorAbstract;
    }

    public void setAuthorAbstract(String authorAbstract) {
        this.authorAbstract = authorAbstract;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getMediaCommentary() {
        return mediaCommentary;
    }

    public void setMediaCommentary(String mediaCommentary) {
        this.mediaCommentary = mediaCommentary;
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public String getPageNum() {
        return pageNum;
    }

    public void setPageNum(String pageNum) {
        this.pageNum = pageNum;
    }

    public String getImpression() {
        return impression;
    }

    public void setImpression(String impression) {
        this.impression = impression;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }




    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Book() {
    }


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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDdPrice() {
        return ddPrice;
    }

    public void setDdPrice(double ddPrice) {
        this.ddPrice = ddPrice;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public String getPublicCount() {
        return publicCount;
    }

    public void setPublicCount(String publicCount) {
        this.publicCount = publicCount;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Date getPrintTime() {
        return printTime;
    }

    public void setPrintTime(Date printTime) {
        this.printTime = printTime;
    }


    public Integer getSaleCount() {
        return saleCount;
    }

    public void setSaleCount(Integer saleCount) {
        this.saleCount = saleCount;
    }

    public String getCateId() {
        return cateId;
    }

    public void setCateId(String cateId) {
        this.cateId = cateId;
    }

    public String getRecommend() {
        return recommend;
    }

    public void setRecommend(String recommend) {
        this.recommend = recommend;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

}
