package com.xh.service;

import com.xh.dao.UserDao;
import com.xh.entity.User;
import com.xh.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class UserServicelmpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public void zhuce(User user, HttpServletRequest request) {
        User user1 = userDao.selectOne(user.getEmail());
        if (user1 == null) {
            String salt = MD5Util.getSalt(6);
            String md5Code = MD5Util.getMd5Code(salt + user.getPassword() + salt);
            user.setSalt(salt);
            user.setStatus(1); //1正常  0冻结  2未激活
            user.setPassword(md5Code);
            user.setId(UUID.randomUUID().toString());
            user.setRegistTime(new Date());
            request.getSession().setAttribute("user", user);
            userDao.zhuce(user);
        } else {
            throw new RuntimeException("该用户已存在,请直接登录!");
        }
    }

    @Override
    public String login(User user,HttpServletRequest request) {
        User user1 = userDao.selectOne(user.getEmail());
        String message = null;
        if (user1 != null) {
                if (user1.getStatus() == 1) {
                    String salt = user1.getSalt();
                    String md5Code = MD5Util.getMd5Code(salt + user.getPassword() + salt);
                    System.out.println(user.getPassword());
                    System.out.println(salt);
                    if (md5Code.equals(user1.getPassword())) {
                        request.getSession().setAttribute("user",user1);
                        message = "success";
                    } else {
                        message = "密码不正确";
                    }
                } else {
                    message = "该用户已冻结";
                }
        } else {
            message = "该用户不存在";
        }
        return message;
    }


    @Override
    public void xiugai(String code,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        user.setEmailCode(code);
        user.setStatus(1);
        userDao.xiugai(user);
    }

    @Override
    public List<User> queryAll() {
        return userDao.queryAll();
    }

    @Override
    public void updateStatus(String email) {
        User user = userDao.selectOne(email);
        if (user.getStatus()==1){
            user.setStatus(0);
        }else {
            user.setStatus(1);
        }
        userDao.xiugai(user);
    }
}
