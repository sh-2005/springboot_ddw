package com.xh.dao;

import com.xh.entity.Item;

import java.util.List;


public interface ItemDao {

    //前台:添加订单项
    void add(Item item);

    //后台:根据订单id查询订单项
    List<Item> queryOrderId(String OrderId);
}
