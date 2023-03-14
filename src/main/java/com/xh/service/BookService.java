package com.xh.service;

import com.xh.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    List<Book> findAll();
    void insert(Book book);
    void delete(String id);
    Book selectOne(String id);
    void update(Book book);
    List<Book> queryByLike(@Param("key")String key, @Param("content")String content);
    //前台:编辑推荐
    public List<Book> queryRecommend();
    //前台:热销图书
    public List<Book> queryHot();
    //前台:最新上架
    public List<Book> queryNew();
    //前台:新书热卖
    public List<Book> querynewHot();
    //前台:二级页面展示图书
    List<Book> queryByCidAndSid(String cid,String sid,Integer page,Integer rows);
    //前台:查询总条数
    public Integer queryByCidAndSidCount(String cid,String sid,Integer pageSize);
}
