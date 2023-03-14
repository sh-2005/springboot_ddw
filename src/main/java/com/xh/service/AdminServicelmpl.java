package com.xh.service;

import com.xh.dao.AdminDao;
import com.xh.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServicelmpl implements AdminService {

    @Autowired
    private AdminDao adminDao;
    @Override
    public Admin login(Admin admin) {
        Admin login = adminDao.login(admin.getUsername());
        if (login!=null){
            if (admin.getPassword().equals(login.getPassword())){
                return login;
            }else {
                throw new RuntimeException("密码错误!");
            }
        }else {
            throw new RuntimeException("账号不对");
        }
    }

}
