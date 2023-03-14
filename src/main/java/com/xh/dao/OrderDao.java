package com.xh.dao;

import com.xh.entity.Order;

import java.util.List;

public interface OrderDao {

    //添加订单
    public void add(Order order);

    //修改订单信息
    public void update(Order order);

    //查询所有用户信息
    public List<Order> queryAll();

    //根据Orderid查询订单信息
     Order queryId(String id);
}
