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
import com.freshmarket.service.UnitedItemService;

@Controller
public class UnitedItemController {
	
	@Autowired
	@Qualifier("unitedItemServiceImpl")
    private UnitedItemService unitedItemService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setItemService(UnitedItemService unitedItemService){
    	this.unitedItemService=unitedItemService;
    }
    
    public UnitedItemController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Item_Controller_Call___");
    	System.out.println("__________________________");
	}
    
    
	@RequestMapping(value = "/unitedItemMapView")
	public ModelAndView googlemap(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		
		
		Search search=new Search();
		
		search.setCurrentPage(1);
		search.setPageSize(1000);
		/**/
		//search.setPageSize(500);
		
		List itemList=unitedItemService.findItemList(search);
		modelAndView.addObject("itemList", unitedItemService.findItemList(search));
				
		modelAndView.setViewName("unitedWeb/unitedItemMapView");
		return modelAndView;
	}
    
}
