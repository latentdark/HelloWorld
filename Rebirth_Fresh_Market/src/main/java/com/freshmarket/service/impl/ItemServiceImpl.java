package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.freshmarket.common.Search;
import com.freshmarket.dao.ItemDao;
import com.freshmarket.domain.Item;
import com.freshmarket.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
    
	@Autowired
	@Qualifier("itemDaoImpl")
	private ItemDao itemDao;

    public void setItemDao(ItemDao itemDao){
    	this.itemDao=itemDao;
    }
    
    public ItemServiceImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("__Item_Service_Impl_Call__");
    	System.out.println("__________________________");
	}

	@Override
	public Integer addItem(Item item) {
		// TODO Auto-generated method stub
		return itemDao.addItem(item);
	}

	@Override
	public Item findItem(Integer itemNo) {
		// TODO Auto-generated method stub
		return itemDao.findItem(itemNo);
	}

	@Override
	public Integer updateItem(Item item) {
		// TODO Auto-generated method stub
		return itemDao.updateItem(item);
	}

	@Override
	public Integer removeItem(Integer itemNo) {
		// TODO Auto-generated method stub
		return itemDao.removeItem(itemNo);
	}

	@Override
	public List<Item> findItemList(Search search) {
		// TODO Auto-generated method stub
		return itemDao.findItemList(search);
	}
    
}
