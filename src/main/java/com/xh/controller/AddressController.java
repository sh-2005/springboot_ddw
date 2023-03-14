package com.xh.controller;

import com.xh.entity.Address;
import com.xh.entity.User;
import com.xh.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("address")
public class AddressController {
    @Autowired
    private AddressService addressService;

    @RequestMapping("selectId")
    public String selectId(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String id = user.getId();
        List<Address> addresses = addressService.selectId(id);
        request.setAttribute("addressList",addresses);
        return "front/order/address_form";
    }
    @RequestMapping("queryId")
    public String queryId(String id,HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        List<Address> addresses = addressService.selectId(user.getId());
        request.setAttribute("addressList",addresses);
         Address address = addressService.queryId(id);
         request.setAttribute("id",id);
         if (id==null){

         }else {
             request.setAttribute("address1",address);
         }
        return "front/order/address_form";
    }

    @RequestMapping("update")
    public String  update(Address address,HttpServletRequest request){
        addressService.update(address,request);
        return "redirect:/order/addItem";
    }
}
