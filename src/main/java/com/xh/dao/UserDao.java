package com.xh.dao;

import com.xh.entity.User;

import java.util.List;

public interface UserDao {
    public void zhuce(User user);
    public User selectOne(String email);
    public void xiugai(User user);
    public List<User> queryAll();
}
