package com.freshmarket.controller;

import org.springframework.stereotype.Controller;

import com.freshmarket.service.DealService;

@Controller
public class DealController {
    private DealService dealService;

    public void setDealService(DealService dealService){
    	this.dealService=dealService;
    }

}
