package com.xh.Interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Component
public class InterceptorConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new MyInterceptor())
                .addPathPatterns("/book/queryAll")
                .addPathPatterns("/category/findAll")
                .addPathPatterns("/item/queryOrderId")
                .addPathPatterns("/order/queryAll")
                .addPathPatterns("/user/findAll")
                .excludePathPatterns("/admin/**");
    }
}
