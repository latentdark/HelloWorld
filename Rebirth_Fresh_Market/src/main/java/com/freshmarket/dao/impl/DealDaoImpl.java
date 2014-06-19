package com.freshmarket.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.DealDao;
import com.freshmarket.domain.Deal;
import com.freshmarket.domain.Item;

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

	@Override
	public Integer addWish(Integer userNo, Integer itemNo) {
		// TODO Auto-generated method stub
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("itemNo", itemNo);
		
		return sqlSession.insert("DealMapper.addWish", map);
	}

	@Override
	public Integer removeWish(Integer userNo, Integer itemNo) {
		// TODO Auto-generated method stub
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("itemNo", itemNo);
		
		return sqlSession.delete("DealMapper.removeWish", map);
	}

	@Override
	public List<Item> findWishList(Integer userNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("DealMapper.findWishList", userNo);
	}


}
