package com.xh.controller;

import com.alibaba.fastjson.JSONObject;
import com.xh.entity.User;
import com.xh.service.UserService;
import com.xh.util.MD5Util;
import com.xh.util.SecurityCode;
import com.xh.util.SecurityImage;
import com.xh.util.SendEmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("user")
public class  UserController {

    @Autowired
    private UserService userService;
    //验证码
    @RequestMapping("creatImg")
    public String creatImg(HttpServletResponse response, HttpSession session) throws IOException {
        // 1 调验证码插件中的方法，生成验证码图片
        String code = SecurityCode.getSecurityCode();
        System.out.println(code);
        BufferedImage bufferedImage = SecurityImage.createImage(code);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bufferedImage, "gif", out);
        session.setAttribute("code", code);
        return null;
    }
    //注册用户
    @RequestMapping("zhuce")
    public String zhuce(User user, HttpServletRequest request,String ServerCode,HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        HashMap<String,Object> hashMap =new HashMap<>();
        PrintWriter writer = response.getWriter();
        String  code = (String) request.getSession().getAttribute("code");
        try {
            if (ServerCode.equals(code)) {
                userService.zhuce(user,request);
                hashMap.put("success", true);
                hashMap.put("msg", "注册成功！");
            }else {
                hashMap.put("success",false);
                hashMap.put("msg","验证码错误");
            }
        } catch (Exception e) {
            e.printStackTrace();
            hashMap.put("success",false);
            hashMap.put("msg",e.getMessage());
        }
        String string = JSONObject.toJSONString(hashMap);
        writer.print(string);
        return null;
    }

    //登录
    @RequestMapping("login")
    public String login(User user,HttpServletRequest request){
         String message = userService.login(user,request);
         request.setAttribute("message",message);
        if (message.equals("success")){
            String  loginStatus = (String) request.getSession().getAttribute("loginStatus");
            if(loginStatus!=null){
                return "redirect:/address/queryId";//强制登录
            }else{
                return "redirect:/book/main";
            }

        }else {
            return "front/user/login_form";
        }

    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/book/main";
    }

    @RequestMapping("checkLogin")
    //验证是否登录
    public String checkLogin(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
                return "redirect:/address/queryId"; //跳转地址页面
        }
        request.getSession().setAttribute("loginStatus", "1");  //存强制登录的标记
        return "front/user/login_form"; //去登陆
    }
    //修改状态
    @RequestMapping("updateStatus")
    public String updateStatus(String email){
        userService.updateStatus(email);
        return "redirect:/user/findAll";
    }
    //后台:查所有
    @RequestMapping("findAll")
    public String findAll(HttpServletRequest request){
        List<User> users = userService.queryAll();
        request.setAttribute("users",users);
        return "back/user/show";
    }
}
