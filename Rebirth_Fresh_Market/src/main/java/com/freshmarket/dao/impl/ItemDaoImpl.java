package com.freshmarket.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.ItemDao;
import com.freshmarket.domain.Item;

@Repository
public class ItemDaoImpl implements ItemDao {
    private SqlSessionTemplate sqlSession;

    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
    }

	@Override
	public Integer addItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer findItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer removeItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> findItemList(Search search) {
		// TODO Auto-generated method stub
		return null;
	}


}
