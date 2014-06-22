package com.freshmarket.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		search.setPageSize(1000);
		/**/
		//search.setPageSize(500);
		
		List itemList=itemService.findItemList(search);
		modelAndView.addObject("itemList", itemService.findItemList(search));
		
		//System.out.println(itemList[0]);
		
		modelAndView.addObject("test", "뽑아묵는교?");
		
		modelAndView.setViewName("web/itemMapView");
		return modelAndView;
	}
	
	@RequestMapping(value ="/ajaxTest")
	public @ResponseBody String ajaxTest(Locale locale, Model model) {
		return "success";
	}
	
	@RequestMapping(value ="/findMyItemList")
	public @ResponseBody List findMyItemList(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
		System.out.println("findMyItemList In__");
		System.out.println(userNo);
		List itemList=itemService.findMyItemList(userNo);
		/*
		List temp = new ArrayList();
		temp.add(new String("성공"));
		temp.add("흠");
		temp.add("음?");
		*/
		return itemList;
	}
	/*
	@RequestMapping(value ="/ajaxTest2")
	public @ResponseBody JSONObject ajaxTest2(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo) {
		System.out.println("ajaxTest In__");
		System.out.println(userNo);
		//List temp = null;
		//temp.add(new String("성공"));
		//model.addAttribute("test","성공");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("test", 1234);
		//model.add("test",new String("성공"));
		return jsonObject;
	}
	*/
	/*
	@RequestMapping(value ="/ajaxTest2")
	public @ResponseBody Map<?,?> ajaxTest2(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
			Locale locale, ModelMap model) {
		System.out.println("ajaxTest In__");
		System.out.println(userNo);
		//List temp = null;
		//temp.add(new String("성공"));
		model.put("test", new String("성공"));
		//model.addAttribute("성공");
		//model.add("test",new String("성공"));
		return model;
	}
	 */
    
}
