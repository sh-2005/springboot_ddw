package com.xh.dao;

import com.xh.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryDao {
    //查所有
    List<Category> findAll();
    //添加一级类别
    void add(Category category);
    //查询一级类别
    List<Category> queryByLevles(Integer levels);
    //删除类别
    void delete(String id);
    //查一个
    Category queryOne(String id);
    //根据一级类别查询对应二级类别的数量
    Integer queryByCount(String  id);
    //前台:查询所有类别
    List<Category> findAllLevles();
    //前台:查询以及类别对应的二级类别
    Category findOneLevels(String cid);
}
