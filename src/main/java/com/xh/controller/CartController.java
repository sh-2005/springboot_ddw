package com.xh.controller;

import com.alibaba.fastjson.JSONObject;
import com.xh.entity.Book;
import com.xh.entity.CartItem;
import com.xh.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

@Controller
@RequestMapping("cart")
public class CartController {

    @Autowired
    private BookService bookService;

    @RequestMapping("insert")
    public String insert(HttpServletRequest request,String id){
        Book book = bookService.selectOne(id);
        HashMap<String, CartItem> map = (HashMap<String, CartItem>) request.getSession().getAttribute("shoppingCart");
        if (map==null){
            map =new HashMap<String, CartItem>();
            map.put(id,new CartItem(book.getId(),book.getBookName(),1,book.getPrice(),book.getDdPrice(),book.getDdPrice(),1));
            request.getSession().setAttribute("shoppingCart",map);
            saveTotal(map,request);
        }else {
            CartItem item= map.get(id);
            if (item==null){
                map.put(id,new CartItem(book.getId(),book.getBookName(),1,book.getPrice(),book.getDdPrice(),book.getDdPrice(),1));
                request.getSession().setAttribute("shoppingCart",map);
                saveTotal(map,request);
            }else {
                item.setCount(item.getCount()+1);
                item.setStatus(1);
                request.getSession().setAttribute("shoppingCart",map);
                saveTotal(map,request);
            }
        }
        return "front/cart/cart_list";
    }
    public void saveTotal(HashMap<String, CartItem> map, HttpServletRequest request){
        double totals=0.0;
        double saves=0.0;
        for (String  key:map.keySet()){
            CartItem o = (CartItem) map.get(key);
            if (o.getStatus()==1){
                //总金额
                totals+=o.getDdPrice()*o.getCount();
                //总节省
                saves+=(o.getPrice()-o.getDdPrice())*o.getCount();
            }
        }
        request.getSession().setAttribute("totals",totals);
        request.getSession().setAttribute("saves",saves);
    }

    @RequestMapping("update")
    public String update(HttpServletRequest request, String id, Integer count, HttpServletResponse response) throws IOException {
        HashMap<String, CartItem> map = (HashMap<String, CartItem>) request.getSession().getAttribute("shoppingCart");
        response.setCharacterEncoding("utf-8");
        HashMap<String,Object> hashMap=new HashMap<>();
        PrintWriter writer = response.getWriter();
        CartItem cartItem = map.get(id);
        Book book = bookService.selectOne(id);
        Integer stock = book.getStock();
        request.getSession().setAttribute("stock",stock);
        if (count<=stock){
            cartItem.setCount(count);
            request.getSession().setAttribute("shoppingCart",map);
            saveTotal(map,request);
            hashMap.put("success",true);
            hashMap.put("msg","修改成功！");
        }else {
            hashMap.put("success",false);
            hashMap.put("msg","目前只有"+stock+"本了，请重新输入");
        }
        String string = JSONObject.toJSONString(hashMap);
        writer.print(string);
        return null;
    }

    @RequestMapping("delete")
    public String delete(HttpServletRequest request,String id){
        HashMap<String, CartItem> map = (HashMap<String, CartItem>) request.getSession().getAttribute("shoppingCart");
        CartItem cartItem = map.get(id);
        cartItem.setStatus(0);
        request.getSession().setAttribute("shoppingCart",map);
        saveTotal(map,request);
        return "front/cart/cart_list";
    }
    @RequestMapping("recover")
    public String recover(HttpServletRequest request,String id){
       HashMap<String, CartItem> map = (HashMap<String, CartItem>) request.getSession().getAttribute("shoppingCart");
        //获取购物项
        CartItem item = (CartItem)map.get(id);
        //该状态
        item.setStatus(1);
        item.setCount(item.getCount());
        //存入session
        request.getSession().setAttribute("shoppingCart",map);
        //计算总节省总价格
        saveTotal(map,request);
        return "front/cart/cart_list";
    }

}
