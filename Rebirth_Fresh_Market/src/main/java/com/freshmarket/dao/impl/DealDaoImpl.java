package com.freshmarket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.DealDao;
import com.freshmarket.domain.Deal;

@Repository
public class DealDaoImpl implements DealDao {
    
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//Setter Injection
    public void setSqlSession(SqlSession sqlSession){
    	this.sqlSession=sqlSession;
    }
    
    //Default Constructor
    public DealDaoImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("____Deal_Dao_Impl_Call____");
    	System.out.println("__________________________");
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
