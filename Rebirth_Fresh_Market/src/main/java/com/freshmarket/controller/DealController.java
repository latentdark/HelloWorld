package com.freshmarket.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
    
	
	@RequestMapping(value = "/sellbuy")
	public ModelAndView googlemap(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("sellbuy.jsp");
		return modelAndView;
	}
    
}
