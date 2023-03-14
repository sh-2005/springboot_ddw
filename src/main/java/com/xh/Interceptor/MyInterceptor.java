package com.xh.Interceptor;

import com.xh.entity.Admin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object admin = request.getSession().getAttribute("admin");
        if (admin!=null){
            return true;
        }else {
            response.sendRedirect(request.getContextPath()+"/back/log.jsp");
            return false;
        }

    }


}
