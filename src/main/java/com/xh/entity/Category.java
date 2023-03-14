package com.xh.entity;

import java.util.List;

public class Category {
    private String id;
    private String cateName; //类别名称
    private Integer count;
    private String parentId;   //父类别
    private Integer levels;      //级别

    private Category categorys;

    private List<Category> categoryList;


    public Category(String id, String cateName, Integer count, String parentId, Integer levels) {
        this.id = id;
        this.cateName = cateName;
        this.count = count;
        this.parentId = parentId;
        this.levels = levels;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }

    public Category getCategorys() {
        return categorys;
    }

    public void setCategorys(Category categorys) {
        this.categorys = categorys;
    }

    public Category() {
    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", cateName='" + cateName + '\'' +
                ", count=" + count +
                ", parentId='" + parentId + '\'' +
                ", levels=" + levels +
                ", categorys=" + categorys +
                ", categoryList=" + categoryList +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public Integer getLevels() {
        return levels;
    }

    public void setLevels(Integer levels) {
        this.levels = levels;
    }
}
