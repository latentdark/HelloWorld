package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.freshmarket.common.Search;
import com.freshmarket.dao.DealDao;
import com.freshmarket.domain.Deal;
import com.freshmarket.service.DealService;

@Service
public class DealServiceImpl implements DealService {
    
	@Autowired
	@Qualifier("dealDaoImpl")
	private DealDao dealDao;

    public void setDealDao(DealDao dealDao){
    	this.dealDao=dealDao;
    }
    
    public DealServiceImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("__Deal_Service_Impl_Call__");
    	System.out.println("__________________________");
	}

	@Override
	public Integer makeDeal(Deal deal) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Deal findDeal(Integer dealNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateDeal(Deal deal) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer completeDeal(Integer dealNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer cancelDeal(Integer dealNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Deal> findDealList(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer pushMessage(Integer dealNo) {
		// TODO Auto-generated method stub
		return null;
	}


}
