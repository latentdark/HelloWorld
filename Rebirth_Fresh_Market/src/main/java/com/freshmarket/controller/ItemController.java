package com.freshmarket.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.freshmarket.common.Search;
import com.freshmarket.domain.Item;
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
    
	@RequestMapping(value = "/itemMapView")
	public ModelAndView googlemap(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		
		Search search=new Search();
		search.setCurrentPage(1);
		search.setPageSize(200);
		
		List itemList=itemService.findItemList(search);
		modelAndView.addObject("itemList", itemService.findItemList(search));
		
		//System.out.println(itemList[0]);
		
		modelAndView.addObject("test", "뽑아묵는교?");
		
		modelAndView.setViewName("web/itemMapView");
		return modelAndView;
	}
    
}
