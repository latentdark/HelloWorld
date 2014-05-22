package com.freshmarket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.ItemDao;
import com.freshmarket.domain.Item;

@Repository
public class ItemDaoImpl implements ItemDao {
    
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//Setter Injection
    public void setSqlSession(SqlSession sqlSession){
    	this.sqlSession=sqlSession;
    }
    
    //Default Constructor
    public ItemDaoImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("____Item_Dao_Impl_Call____");
    	System.out.println("__________________________");
	}

	@Override
	public Integer addItem(Item item) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Item findItem(Integer itemNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateItem(Item item) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer removeItem(Integer itemNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> findItemList(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

}
