package com.xh.dao;

import com.xh.entity.Address;

import java.util.List;

public interface AddressDao {
    public List<Address> selectId(String userId);
    public Address queryId(String id);
    public void add(Address address);
    public void update(Address address);
}
