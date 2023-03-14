package com.xh.service;

import com.xh.entity.Category;

import java.util.List;

public interface CategoryService {
    //查所有
    List<Category> findAll();
    //添加一级类别
    void add(Category category);
    //查询一级类别
    List<Category> queryByLevles(Integer levels);
    //删除类别
    String delete(String id);
    //前台:查询所有类别
    List<Category> findAllLevles();
    //前台:查询以及类别对应的二级机类别
    Category findOneLevels(String cid);
}
