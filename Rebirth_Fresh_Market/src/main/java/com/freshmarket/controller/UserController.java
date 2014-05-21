package com.freshmarket.controller;

import org.springframework.stereotype.Controller;

import com.freshmarket.service.UserService;

@Controller
public class UserController {
    private UserService userService;

    public void setUserService(UserService userService){
    	this.userService=userService;
    }

}
