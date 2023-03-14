package com.xh.service;

import com.xh.entity.User;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService {
    //前台:用户注册
    public void zhuce(User user,HttpServletRequest request);
    //前台:用户登录
    public String login(User user,HttpServletRequest request);
    //前台:修改状态和邮箱验证码
    public void xiugai(String code,HttpServletRequest request);

    public List<User> queryAll();

    public void updateStatus(String email);
}
