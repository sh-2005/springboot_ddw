package com.xh.service;

import com.xh.dao.ItemDao;
import com.xh.entity.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class ItemServicelmpl implements ItemService {
    @Autowired
    private ItemDao itemDao;

    @Override
    public void add(Item item) {
        item.setId(UUID.randomUUID().toString());
        itemDao.add(item);
    }

    @Override
    public List<Item> queryOrderId(String OrderId) {
        return itemDao.queryOrderId(OrderId);
    }
}
