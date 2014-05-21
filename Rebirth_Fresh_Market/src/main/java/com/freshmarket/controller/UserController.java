package com.freshmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.freshmarket.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
    private UserService userService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

    public void setUserService(UserService userService){
    	this.userService=userService;
    }
    
    public UserController() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___User_Controller_Call___");
    	System.out.println("__________________________");
	}

}
