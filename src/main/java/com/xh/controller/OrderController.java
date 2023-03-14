package com.xh.controller;

import com.xh.entity.Book;
import com.xh.entity.Item;
import com.xh.entity.Order;
import com.xh.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("queryAll")
    public String queryAll(HttpServletRequest request){
        List<Order> orders = orderService.queryAll();
        request.setAttribute("order",orders);
        return "back/order/show";
    }
    @RequestMapping("addItem")
    public String addItem(HttpServletRequest request, Order order, Item item, Book book){
        orderService.addItem(request,order,item,book);
        clearshoppingCart(request);
        return "front/order/order_ok";
    }

    public void clearshoppingCart(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("shoppingCart");
    }
}
