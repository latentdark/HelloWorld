package com.freshmarket.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.freshmarket.common.Search;
import com.freshmarket.dao.DealDao;
import com.freshmarket.domain.Deal;

public class DealDaoImpl implements DealDao {
    private SqlSessionTemplate sqlSessionTemplate;

    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
    	this.sqlSessionTemplate=sqlSessionTemplate;
    }

	@Override
	public Integer makeDeal(Deal deal) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer findDeal(Integer dealNo) {
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
