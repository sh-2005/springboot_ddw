package com.xh.service;

import com.xh.entity.Address;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface AddressService {
    public List<Address> selectId(String userId);
    public Address queryId(String id);
    public void update(Address address, HttpServletRequest request);
}
