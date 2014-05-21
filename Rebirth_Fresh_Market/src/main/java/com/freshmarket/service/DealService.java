package com.freshmarket.service;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Deal;

public interface DealService {

    public Integer makeDeal(Deal deal);

    public Deal findDeal(Integer dealNo);

    public Integer updateDeal(Deal deal);

    public Integer completeDeal(Integer dealNo);

    public Integer cancelDeal(Integer dealNo);

    public List<Deal> findDealList(Search search);

    public Integer pushMessage(Integer dealNo);

}
