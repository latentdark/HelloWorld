package com.freshmarket.service;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;

public interface UnitedItemService {

    public Integer addItem(Item item);
    
    public Item findItem(Integer itemNo);

    public Integer updateItem(Item item);

    public Integer removeItem(Integer itemNo);

    public List<Item> findItemList(Search search);

    public List<Item> findMyItemList(Integer userNo);
}
