package com.freshmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.freshmarket.service.ChatService;

@Controller
public class ChatController {
    
	@Autowired
	@Qualifier("chatServiceImpl")
	private ChatService chatService;

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
    public void setChatService(ChatService chatService){
    	this.chatService=chatService;
    }
    
    public ChatController() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("___Chat_Controller_Call___");
    	System.out.println("__________________________");
	}
    
}
