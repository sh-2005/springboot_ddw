package com.xh.service;

import com.xh.dao.AddressDao;
import com.xh.entity.Address;
import com.xh.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class AddressServicelmpl implements AddressService {
    @Autowired
    private AddressDao addressDao;

    @Override
    public List<Address> selectId(String userId) {
        return addressDao.selectId(userId);
    }

    @Override
    public Address queryId(String id) {
        return addressDao.queryId(id);
    }

    @Override
    public void update(Address address,HttpServletRequest request) {
        if (address.getId().equals("")){

            address.setId(UUID.randomUUID().toString());
            User user = (User) request.getSession().getAttribute("user");
            address.setUserId(user.getId());
            addressDao.add(address);
        }else {
            //判断是否修改地址
            Address address1 = addressDao.queryId(address.getId());
            if (address1.equals(address)){

            }else {
                addressDao.update(address);
            }
        }
        request.getSession().setAttribute("address",address);
    }
}
