package com.xh.service;

import com.xh.dao.BookDao;
import com.xh.dao.CategoryDao;
import com.xh.entity.Book;
import com.xh.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class CategoryServicelmpl implements CategoryService {
    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private BookDao bookDao;

    @Override
    public List<Category> findAll() {
        return categoryDao.findAll();
    }

    @Override
    public void add(Category category) {
        if (category.getParentId()==null){
            category.setLevels(1);
        }else {
            category.setLevels(2);
        }
        category.setId(UUID.randomUUID().toString());
        category.setCount(0);
        categoryDao.add(category);
    }

    @Override
    public List<Category> queryByLevles(Integer levels) {
        return categoryDao.queryByLevles(levels);
    }

    @Override
    public String delete(String id) {
        Category category = categoryDao.queryOne(id);
        String message=null;
        if (category.getLevels()==1){
            Integer count = categoryDao.queryByCount(id);
            if (count==0){
                categoryDao.delete(id);
            }else {
             message="该一级类别下有二级类别不能删除!";
            }
        }else {
            List<Book> books = bookDao.queryByBookCounts(id);
            if (books.size()==0){
               categoryDao.delete(id);
            }else {
                message="该二级类别下有图书不能删除!";
            }
        }
        return message;
    }

    @Override
    public List<Category> findAllLevles() {
        return categoryDao.findAllLevles();
    }

    @Override
    public Category findOneLevels(String cid) {
        return categoryDao.findOneLevels(cid);
    }


}
