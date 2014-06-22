package com.freshmarket.controller;

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

import com.freshmarket.service.DealService;

@Controller
public class DealController {
	
	@Autowired
	@Qualifier("dealServiceImpl")
    private DealService dealService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setDealService(DealService dealService){
    	this.dealService=dealService;
    }
    
    public DealController() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("___Deal_Controller_Call___");
    	System.out.println("__________________________");
	}
    
	
    @RequestMapping(value ="/addWish")
	public @ResponseBody String addWish(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
			@RequestParam(value="itemNo", required=false, defaultValue="0")Integer itemNo){
		System.out.println("findMyItemList In__");
		System.out.println(userNo);
		Integer result=dealService.addWish(userNo, itemNo);
		if(result==1){
			return "addWish_success";
		}else{
			return "addWish_fail";
		}
	}
    
    @RequestMapping(value ="/findWishList")
	public @ResponseBody List findWishList(
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo){
		System.out.println("findMyItemList In__");
		System.out.println(userNo);
		List wishList=dealService.findWishList(userNo);
		for(int i=0;i<wishList.size();i++){
			System.out.println("i="+i+"__"+wishList.get(i));
		}
		return wishList;
	}
    
	@RequestMapping(value = "/sellbuy")
	public ModelAndView googlemap(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("sellbuy.jsp");
		return modelAndView;
	}
	
	
    
}
