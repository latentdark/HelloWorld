package com.freshmarket.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
    @RequestMapping(value = "/findComment")
	@ResponseBody
	public List findComment(
			@RequestParam(value="itemNo", required=false, defaultValue="0")Integer itemNo
			) {
		System.out.println("itemNo_"+itemNo);
		List commentList=communicationService.findComment(itemNo);
		for(int i=0;i<commentList.size();i++){
			System.out.println("i_"+commentList.get(i));
		}
		return commentList;
	}
    
    @RequestMapping(value = "/countComment")
	@ResponseBody
	public Integer countComment(
			@RequestParam(value="itemNo", required=false, defaultValue="0")Integer itemNo
			) {
		System.out.println("itemNo_"+itemNo);
		Integer countComment=communicationService.countComment(itemNo);
	
		return countComment;
	}
    
}
