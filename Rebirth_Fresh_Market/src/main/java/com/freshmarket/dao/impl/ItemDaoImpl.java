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
	
		Integer a = sqlSession.insert("ItemMapper.addItem", item);
		item.setItemNo((Integer)sqlSession.selectOne("ItemMapper.findItemNo", item));
		Integer b = sqlSession.insert("ItemMapper.addLocation", item);
		Integer c = sqlSession.insert("ItemMapper.addItem_pic", item);

		return a+b+c;
	}
	
	@Override
	public Item findItem(Integer itemNo) {
		return sqlSession.selectOne("ItemMapper.findItem", itemNo);
	}

	@Override
	public Integer updateItem(Item item) {
		return sqlSession.update("ItemMapper.updateItem", item);
	}

	@Override
	public Integer removeItem(Integer itemNo) {
		return sqlSession.delete("ItemMapper.removeItem", itemNo);
	}

	@Override
	public List<Item> findItemList(Search search) {
		return sqlSession.selectList("ItemMapper.findItemList", search);
	}

	@Override
	public List<Item> findMyItemList(Integer userNo) {
		return sqlSession.selectList("ItemMapper.findMyItemList", userNo);
	}

}
