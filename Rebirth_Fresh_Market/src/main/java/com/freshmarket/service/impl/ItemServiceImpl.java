package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.freshmarket.common.Search;
import com.freshmarket.dao.ItemDao;
import com.freshmarket.domain.Item;
import com.freshmarket.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
    private ItemDao itemDao;

    public void setItemDao(ItemDao itemDao){
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
