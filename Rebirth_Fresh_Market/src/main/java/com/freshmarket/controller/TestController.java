package com.freshmarket.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.freshmarket.domain.Item;
import com.freshmarket.domain.User;
import com.freshmarket.service.ItemService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class TestController {
	@Autowired
	@Qualifier("itemServiceImpl")
    private ItemService itemService;
	
	
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
	
	@RequestMapping(value ="/itemMap")
	public String itemMap(Locale locale, Model model) {
		return "web/itemMap";
	}
	
}

	