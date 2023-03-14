package com.xh.dao;

import com.xh.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookDao {
    //后台：查所有图书
    List<Book> findAll();
    //后台：添加图书
    void insert(Book book);
    //后台:删除图书
    void delete(String id);
    //后台：根据id查图书
    Book selectOne(String id);
    //后台：修改图书
    void update(Book book);
    //后台：查询二级类别下的图书
    List<Book> queryByBookCounts(String id);
    //后台：模糊查询图书
    List<Book> queryByLike(@Param("key")String key, @Param("content")String content);
    //前台:编辑推荐
     List<Book> queryRecommend();
    //前台:热销图书
     List<Book> queryHot();
    //前台:最新上架
     List<Book> queryNew();
    //前台:新书热卖
     List<Book> querynewHot();
    //前台:二级页面展示图书
    List<Book> queryByCidAndSid(@Param("cid")String cid, @Param("sid")String sid,@Param("start") Integer start,@Param("rows") Integer rows);
    //前台:查询总条数
    public Integer queryByCidAndSidCount(@Param("cid")String cid,@Param("sid")String sid);
}
