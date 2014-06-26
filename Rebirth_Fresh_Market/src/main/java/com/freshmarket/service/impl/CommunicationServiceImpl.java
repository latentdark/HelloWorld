package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.freshmarket.dao.CommunicationDao;
import com.freshmarket.domain.Chat;
import com.freshmarket.domain.Comment;
import com.freshmarket.domain.Item;
import com.freshmarket.service.CommunicationService;

@Service
public class CommunicationServiceImpl implements CommunicationService {
    
	@Autowired
	@Qualifier("communicationDaoImpl")
	private CommunicationDao communicationDao;

    public void setChatDao(CommunicationDao communicationDao){
    	this.communicationDao=communicationDao;
    }
    
    public CommunicationServiceImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("Communication_Service_Impl_Call");
    	System.out.println("__________________________");
	}

	@Override
	public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo) {
		// TODO Auto-generated method stub
		return communicationDao.newChat(dealNo, senderNo, receiverNo);
	}

	@Override
	public Integer disconnectChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return communicationDao.disconnectChat(chatNo);
	}

	@Override
	public Integer sendChat(Chat chat) {
		// TODO Auto-generated method stub
		return communicationDao.sendChat(chat);
	}

	@Override
	public List<Chat> findChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return communicationDao.findChat(chatNo);
	}

	@Override
	public List<Chat> findChatList(Integer userNo) {
		// TODO Auto-generated method stub
		return communicationDao.findChatList(userNo);
	}

	@Override
	public List<Chat> findBeforeChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return communicationDao.findBeforeChat(chatNo);
	}

	@Override
	public Integer addInquire(Integer userNo, Integer itemNo, String content) {
		// TODO Auto-generated method stub
		return communicationDao.addInquire(userNo, itemNo, content);
	}

	@Override
	public Integer removeInquire(Integer userNo, Integer itemNo) {
		// TODO Auto-generated method stub
		return communicationDao.removeInquire(userNo, itemNo);
	}

	@Override
	public List<Item> findInquireList(Integer userNo) {
		// TODO Auto-generated method stub
		return communicationDao.findInquireList(userNo);
	}
	
	@Override
	public Integer addReply(Integer commentNo, Integer userNo, String content){
		return communicationDao.addReply(commentNo, userNo, content);
	}

	@Override
	public Integer removeReply(Integer replyNo){
		return communicationDao.removeReply(replyNo);
	}
	
	@Override
	public List<Comment> findComment(Integer itemNo){
		return communicationDao.findComment(itemNo);
	}
	
	public Integer updateComment(Integer commentNo, String content){
		return communicationDao.updateComment(commentNo, content);
	}
    
    public Integer updateReply(Integer replyNo, String content){
    	return communicationDao.updateComment(replyNo, content);
    }
    
    public Integer removeComment(Integer commentNo){
    	return communicationDao.removeComment(commentNo);
    }
    
    public Integer countComment(Integer itemNo){
    	return communicationDao.countComment(itemNo);
    }
}
