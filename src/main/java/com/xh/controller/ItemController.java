package com.xh.controller;

import com.xh.entity.Item;
import com.xh.entity.Order;
import com.xh.service.ItemService;
import com.xh.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("item")
public class ItemController {
    @Autowired
    private ItemService itemService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("queryOrderId")
    public String queryOrderId(String id,HttpServletRequest request){
        List<Item> items = itemService.queryOrderId(id);
        request.setAttribute("items",items);
        Order orders = orderService.queryId(id);
        request.setAttribute("orders",orders);
        System.out.println(orders);
        return "back/order/detail";
    }
}
