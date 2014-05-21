package com.freshmarket.controller;

import org.springframework.stereotype.Controller;

import com.freshmarket.service.ChatService;

@Controller
public class ChatController {
    private ChatService chatService;

    public void setChatService(ChatService chatService){
    	this.chatService=chatService;
    }

}
