package com.freshmarket.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	public TestController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Test_Controller_Call___");
    	System.out.println("__________________________");
	}
	
	@RequestMapping(value ="/dialog")
	public String home(Locale locale, Model model) {
		return "Test/Dialog";
	}
}

	