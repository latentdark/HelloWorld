package com.freshmarket.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.freshmarket.common.Search;
import com.freshmarket.service.ItemService;

@Controller
public class AndroidController {
	
	@Autowired
	@Qualifier("itemServiceImpl")
    private ItemService itemService;
	
	int count=0;
	 public AndroidController() {
			// TODO Auto-generated constructor stub
	    	System.out.println("__________________________");
	    	System.out.println("__Andriod_Controller_Call_");
	    	System.out.println("__________________________");
	}
	 
	 @RequestMapping(value = "/android/itemMapView")
		public JSONObject googlemap(Locale locale, Model model) {
			
			Search search=new Search();
			List itemList=itemService.findItemList(search);
			
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("itemList", itemList);
			
			return jsonObject;
		} 
	 
	 
	@RequestMapping(value = "/android")
	public ModelAndView home(
			Locale locale, Model model,
			HttpServletRequest request,
			@RequestParam(value="name",required=false)String name
			) {
		//getServletContext()
		//ServletContext sc = request.
		//request.setAttribute("", o);	
		
		
		ModelAndView modelAndView=new ModelAndView();
		System.out.println(name);
		//name="ㅋㅋㅋ";
		//count = 0;
		modelAndView.addObject("count", count);
		modelAndView.addObject("name", name);
		modelAndView.setViewName("android/home");

		return modelAndView;
	}
}
