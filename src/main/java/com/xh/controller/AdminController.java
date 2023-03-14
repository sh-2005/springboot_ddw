package com.xh.controller;

import com.alibaba.fastjson.JSONObject;
import com.xh.entity.Admin;
import com.xh.service.AdminService;
import com.xh.util.SecurityCode;
import com.xh.util.SecurityImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private AdminService adminService;
    @RequestMapping("creatImg")
    public String creatImg(HttpServletResponse response, HttpSession session) throws IOException {
        // 1 调验证码插件中的方法，生成验证码图片
        String code = SecurityCode.getSecurityCode();
        System.out.println(code);
        BufferedImage bufferedImage = SecurityImage.createImage(code);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bufferedImage, "gif", out);
        session.setAttribute("ServerCode", code);
        return null;
    }
    @RequestMapping("login")
    public String login(HttpServletRequest request,String code,Admin admin,HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        String  serverCode = (String) request.getSession().getAttribute("ServerCode");
        HashMap<String,Object> hashMap=new HashMap<>();
        PrintWriter writer = response.getWriter();
        try {
            if (serverCode.equals(code)){
                Admin login = adminService.login(admin);
                request.getSession().setAttribute("admin",login);
                hashMap.put("success",true);
                hashMap.put("msg","登录成功!");
            }else {
                hashMap.put("success",false);
                hashMap.put("msg","验证码不对！");
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

    @RequestMapping("tuichu")
    public String tuichu(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("admin");
        return "redirect:/back/login.jsp";
    }
}
