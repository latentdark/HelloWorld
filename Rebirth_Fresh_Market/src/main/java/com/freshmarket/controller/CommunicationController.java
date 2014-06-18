package com.freshmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.freshmarket.service.CommunicationService;

@Controller
public class CommunicationController {
    
	@Autowired
	@Qualifier("communicationServiceImpl")
	private CommunicationService communicationService;

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
    public void setChatService(CommunicationService communicationService){
    	this.communicationService=communicationService;
    }
    
    public CommunicationController() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("communication_Controller_Call");
    	System.out.println("__________________________");
	}
    
}
