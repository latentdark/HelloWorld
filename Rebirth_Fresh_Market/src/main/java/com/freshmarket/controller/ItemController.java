package com.freshmarket.controller;

import org.springframework.stereotype.Controller;

import com.freshmarket.service.ItemService;

@Controller
public class ItemController {
    private ItemService itemService;

    public void setItemService(ItemService itemService){
    	this.itemService=itemService;
    }

}
