package com.xh.controller;

import com.xh.entity.Book;
import com.xh.entity.Category;
import com.xh.service.BookService;
import com.xh.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BookService bookService;

    @RequestMapping("findAll")
    public String findAll(HttpServletRequest request){
        List<Category> all = categoryService.findAll();
        request.setAttribute("category",all);
        return "back/category/show";
    }

    @RequestMapping("add")
    public String add(Category category){
        categoryService.add(category);
        return "redirect:/category/findAll";
    }

    @RequestMapping("queryByLevles")
    public String queryByLevles(HttpServletRequest request){
        List<Category> category = categoryService.queryByLevles(1);
        request.setAttribute("category",category);
        return "back/category/add-second";
    }

    @RequestMapping("delete")
    public String delete(String id,String message,HttpServletRequest request){
        String delete = categoryService.delete(id);
        request.getSession().setAttribute("message",delete);
        return "redirect:/category/findAll";
    }
    @RequestMapping("queryByLevles1")
    public String queryByLevles1(HttpServletRequest request){
        List<Category> categorys = categoryService.queryByLevles(2);
        System.out.println(categorys);
        request.setAttribute("categorys",categorys);
        return "back/book/add";
    }
    @RequestMapping("findAllLevles")
    public String findByAll(HttpServletRequest request){
        List<Category> allLevles = categoryService.findAllLevles();
        request.setAttribute("category",allLevles);
        System.out.println(allLevles);
        return "front/main/category";
    }

    //前台：二级页面展示数据
    @RequestMapping("findOneLevels")
    public String findOneLevels(String cid, HttpServletRequest request, String sid,Model model,Integer pageNow,Integer rows){
        //调用类别查询数据
        Category oneLevels = categoryService.findOneLevels(cid);
        System.out.println(oneLevels);
        request.setAttribute("categorys",oneLevels);
        model.addAttribute("cid",cid);
        model.addAttribute("sid",sid);
        request.setAttribute("pageNow",pageNow);
        System.out.println(pageNow);
        rows=2;
        List<Book> books = bookService.queryByCidAndSid(cid,sid,pageNow,rows);
        request.setAttribute("books",books);
        //总条数
        Integer count = bookService.queryByCidAndSidCount(cid, sid,rows);
        request.setAttribute("pageTotal",count);
        return "front/main/book_list";
    }
}
