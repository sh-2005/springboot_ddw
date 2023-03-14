package com.xh.service;

import com.xh.dao.BookDao;
import com.xh.dao.ItemDao;
import com.xh.dao.OrderDao;
import com.xh.entity.*;
import com.xh.util.SnowFlake;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private BookDao bookDao;

    @Autowired
    private ItemDao itemDao;
    @Override
    public void update(Order order) {
        orderDao.update(order);
    }

    @Override
    public List<Order> queryAll() {
        return orderDao.queryAll();
    }

    @Override
    public Order queryId(String id) {
        return orderDao.queryId(id);
    }

    @Override
    public void addItem(HttpServletRequest request, Order order, Item item,Book book) {
        User user = (User) request.getSession().getAttribute("user");
        //地址信息
        Address address = (Address) request.getSession().getAttribute("address");
        //获取购物车
        HashMap<String,CartItem> map = (HashMap<String, CartItem>) request.getSession().getAttribute("shoppingCart");
        //获取订单总价
        double totals = (double) request.getSession().getAttribute("totals");

        order.setId(UUID.randomUUID().toString());
        order.setOrderNumber(SnowFlake.getOrderNumber());

        order.setOrderTimes((java.sql.Date) new Date());//时间
        order.setAddrUser(address.getName());
        order.setAddrName(address.getDetail());
        order.setTotalPrice(totals);
        order.setStatus("未支付");
        order.setAddrId(address.getId());
        order.setUserId(user.getId());
        orderDao.add(order);

        for (String acc : map.keySet()) {
            CartItem items = map.get(acc);
            if (items.getStatus().equals(1)) {
                //图书信息
                book = bookDao.selectOne(acc);
                item.setId(UUID.randomUUID().toString());
                item.setBookName(items.getBookName());
                item.setBookSrc(book.getSrc());
                item.setPrice(items.getDdPrice());
                item.setCount(items.getCount());
                item.setAmount(items.getSubTotal());
                item.setBookId(items.getBookId());
                item.setOrderId(order.getId());
                itemDao.add(item);

                book.setId(items.getBookId()); //id
                book.setSaleCount(book.getSaleCount()+item.getCount());  //销量
                book.setStock(book.getStock()-item.getCount()); //库存
                bookDao.update(book);
            }
        }
        request.getSession().setAttribute("order",order);
    }

    @Override
    public void add(Order order) {

    }
}
