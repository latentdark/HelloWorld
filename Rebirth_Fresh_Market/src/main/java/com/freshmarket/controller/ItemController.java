package com.freshmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.freshmarket.service.ItemService;

@Controller
public class ItemController {
	
	@Autowired
	@Qualifier("itemServiceImpl")
    private ItemService itemService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setItemService(ItemService itemService){
    	this.itemService=itemService;
    }
    
    public ItemController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Item_Controller_Call___");
    	System.out.println("__________________________");
	}
    
}
