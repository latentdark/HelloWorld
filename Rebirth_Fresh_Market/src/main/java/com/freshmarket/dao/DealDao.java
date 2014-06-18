package com.freshmarket.dao;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Deal;
import com.freshmarket.domain.Item;

public interface DealDao {

    public Integer makeDeal(Deal deal);

    public Deal findDeal(Integer dealNo);

    public Integer updateDeal(Deal deal);

    public Integer completeDeal(Integer dealNo);

    public Integer cancelDeal(Integer dealNo);

    public List<Deal> findDealList(Search search);

    public Integer pushMessage(Integer dealNo);
    
    public Integer addWish(Integer userNo, Integer itemNo);
    
    public Integer removeWish(Integer userNo, Integer itemNo);
    
    public List<Item> findWishList(Integer userNo);
}
