package com.freshmarket.dao;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;

public interface ItemDao {

    public Integer addItem();

    public Integer findItem();

    public Integer updateItem();

    public Integer removeItem();

    public List<Item> findItemList(Search search);

}
