package com.freshmarket.controller;

import java.util.ArrayList;
import java.sql.Date;
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

import com.freshmarket.domain.Comment;
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
		
		List<Comment> commentList2=new ArrayList();
	
		for(int i=0;i<commentList.size();i++){
			System.out.println("i_"+commentList.get(i));
			commentList2.add((Comment) commentList.get(i));
			//System.out.println("i_"+commentList.get(i));
			//System.out.println("i_"+commentList.get(i));
		}
		
		/*
		Comment comment=new Comment();
		
		for(int i=0; i<commentList2.size();i++){
			System.out.println("casting debug_i_"+i+"_"+commentList2.get(i));
			comment=(Comment)commentList2.get(i);
			System.out.println("casting debug_i_"+i+"_"+comment.getReplyRegiDate());
			//System.out.println("casting debug_i_"+i+"_"+new Date((long)comment.getReplyRegiDate()));
		}
		*/
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
    
    @RequestMapping(value = "/addComment")
	@ResponseBody
	public String addComment(
			@RequestParam(value="itemNo", required=false, defaultValue="0")Integer itemNo,
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
			@RequestParam(value="content", required=false, defaultValue="0")String content
			) {
		System.out.println("itemNo_"+itemNo);
		System.out.println("userNo_"+userNo);
		System.out.println("content_"+content);
		communicationService.addComment(itemNo, userNo, content);
	
		return "addComment success";
	}
    
    @RequestMapping(value = "/addReply")
	@ResponseBody
	public String addReply(
			@RequestParam(value="commentNo", required=false, defaultValue="0")Integer commentNo,
			@RequestParam(value="userNo", required=false, defaultValue="0")Integer userNo,
			@RequestParam(value="content", required=false, defaultValue="0")String content
			) {
		System.out.println("commentNo_"+commentNo);
		System.out.println("userNo_"+userNo);
		System.out.println("content_"+content);
		communicationService.addReply(commentNo, userNo, content);
	
		return "addReply success";
	}
    
   
    @RequestMapping(value = "/removeComment")
	@ResponseBody
	public String removeComment(
			@RequestParam(value="commentNo", required=false, defaultValue="0")Integer commentNo) {
		System.out.println("removeComment _ commentNo_"+commentNo);
		communicationService.removeComment(commentNo);
		return "removeComment success";
	}
    
    @RequestMapping(value = "/removeReply")
 	@ResponseBody
 	public String removeReply(
 			@RequestParam(value="replyNo", required=false, defaultValue="0")Integer replyNo) {
 		System.out.println("removeComment _ commentNo_"+replyNo);
 		communicationService.removeReply(replyNo);
 		return "removeComment success";
 	}
    /**/
    
}
