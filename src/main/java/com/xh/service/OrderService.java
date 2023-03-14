package com.xh.service;

import com.xh.entity.Book;
import com.xh.entity.Item;
import com.xh.entity.Order;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface OrderService {

    //修改订单信息
    public void update(Order order);

    //查询所有用户信息
    public List<Order> queryAll();

    //根据Orderid查询订单信息
    public Order queryId(String id);

    public void addItem(HttpServletRequest request, Order order, Item item, Book book);

    //添加订单
    public void add(Order order);

}
