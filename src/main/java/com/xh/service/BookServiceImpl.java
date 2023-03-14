package com.xh.service;

import com.xh.dao.BookDao;
import com.xh.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;

    @Override
    public List<Book> findAll() {
        return bookDao.findAll();
    }

    @Override
    public void insert(Book book) {
        book.setId(UUID.randomUUID().toString());
        book.setSaleCount(0);
        book.setRecommend("3");
        bookDao.insert(book);
    }

    @Override
    public void delete(String id) {
        bookDao.delete(id);
    }

    @Override
    public Book selectOne(String id) {
        return bookDao.selectOne(id);
    }

    @Override
    public void update(Book book) {
        bookDao.update(book);
    }

    @Override
    public List<Book> queryByLike(String key, String content) {
        return bookDao.queryByLike(key,content);
    }

    @Override
    public List<Book> queryRecommend() {
        return bookDao.queryRecommend();
    }

    @Override
    public List<Book> queryHot() {
        return bookDao.queryHot();
    }

    @Override
    public List<Book> queryNew() {
        return bookDao.queryNew();
    }

    @Override
    public List<Book> querynewHot() {
        return bookDao.querynewHot();
    }

    @Override
    public List<Book> queryByCidAndSid(String cid,String sid,Integer page,Integer rows) {
        int start=(page-1)*rows;
        return bookDao.queryByCidAndSid(cid,sid,start,rows);
    }

    @Override
    public Integer queryByCidAndSidCount(String cid, String sid,Integer pageSize) {
        //查询总条数
        Integer count = bookDao.queryByCidAndSidCount(cid,sid);

        //根据总条数计算总页数
        //总条数/每页展示条数=总页数   余数+1;
        Integer pageTotal=count%pageSize==0?count/pageSize:count/pageSize+1;

        return pageTotal;
    }



}
