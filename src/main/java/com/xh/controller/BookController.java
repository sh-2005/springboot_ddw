package com.xh.controller;

import com.xh.entity.Book;
import com.xh.entity.Category;
import com.xh.service.BookService;
import com.xh.service.CategoryService;
import com.xh.util.AliyunOSSUtil;
import com.xh.util.FileUploadUtil;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RequestMapping("book")
@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private CategoryService categoryService;
    @RequestMapping("queryAll")
    public String queryAll(HttpServletRequest request){
        List<Book> all = bookService.findAll();
        request.setAttribute("book",all);
        System.out.println(all);
        return "back/book/show";
    }
    @RequestMapping("insert")
    public String insert(HttpServletRequest request, MultipartFile aaa,Book book) throws IOException {
        String filename = aaa.getOriginalFilename();
        String newFileName="imgs/"+new Date().getTime()+"-"+filename;
        byte[] bytes=null;
        try {
            bytes = aaa.getBytes();
        } catch (IOException e) {
            e.printStackTrace();
        }
        AliyunOSSUtil.uploadFileByte(aaa,"sh-chuangye",newFileName);
        book.setSrc(newFileName);
        bookService.insert(book);
        return "redirect:/book/queryAll";
    }
    @RequestMapping("delete")
    public String delete(String id,HttpServletRequest request){
        Book book = bookService.selectOne(id);
        String src = book.getSrc();
        AliyunOSSUtil.deleteFile("sh-chuangye",src);
        bookService.delete(id);
        return "redirect:/book/queryAll";
    }
    @RequestMapping("selectOne")
    public String selectOne(String id,HttpServletRequest request){
        Book book = bookService.selectOne(id);
        String src = book.getSrc();
        List<Category> category = categoryService.queryByLevles(2);
        request.setAttribute("category",category);
        request.setAttribute("book",book);
        request.getSession().setAttribute("amg",src);
        return "back/book/update";
    }
    @RequestMapping("update")
    public String update(HttpServletRequest request, MultipartFile aaa,Book book) throws IOException {
        System.out.println(aaa.getSize());
        if (aaa.getSize()!=0){
            String filename = aaa.getOriginalFilename();
            String newFileName="imgs/"+new Date().getTime()+"-"+filename;
            byte[] bytes=null;
            try {
                bytes = aaa.getBytes();
            } catch (IOException e) {
                e.printStackTrace();
            }
            AliyunOSSUtil.uploadFileByte(aaa,"sh-chuangye",newFileName);
            book.setSrc(newFileName);
            String  amg = (String) request.getSession().getAttribute("amg");
            AliyunOSSUtil.deleteFile("sh-chuangye",amg);
        }
        bookService.update(book);
        return "redirect:/book/queryAll";
    }
    @RequestMapping("queryByLike")
    public String queryByLike(String key,String content,HttpServletRequest request){
        List<Book> books = bookService.queryByLike(key,content);
        System.out.println("key:"+key+"content:"+content);
        request.setAttribute("book",books);
        System.out.println(books);
        return "back/book/show";
    }

    @RequestMapping("main")
    public String main(HttpServletRequest request){
        //类别数据
        List<Category> allLevles = categoryService.findAllLevles();
        request.setAttribute("category",allLevles);
        //前台:编辑推荐
        List<Book> books = bookService.queryRecommend();
        request.setAttribute("book",books);
        //前台:热销图书
        List<Book> books1 = bookService.queryHot();
        request.setAttribute("hotList",books1);
        //前台:最新上架
        List<Book> books2 = bookService.queryNew();
        request.setAttribute("newList",books2);
        //前台:新书热卖
        List<Book> books3 = bookService.querynewHot();
        request.setAttribute("newHotList",books3);
        return "front/main/main";
    }
    //前台:查询页面
    @RequestMapping("selectId")
    public String selectId(String id,HttpServletRequest request){
        Book book = bookService.selectOne(id);
        System.out.println(book);
        List<Category> category = categoryService.queryByLevles(2);
        request.setAttribute("category",category);
        request.setAttribute("book",book);
        return "front/main/book_detail";
    }

}
