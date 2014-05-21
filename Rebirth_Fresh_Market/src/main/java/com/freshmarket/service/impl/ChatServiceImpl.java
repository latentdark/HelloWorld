package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.freshmarket.dao.ChatDao;
import com.freshmarket.domain.Chat;
import com.freshmarket.service.ChatService;

@Service
public class ChatServiceImpl implements ChatService {
    
	@Autowired
	@Qualifier("chatDaoImpl")
	private ChatDao chatDao;

    public void setChatDao(ChatDao chatDao){
    	this.chatDao=chatDao;
    }

	@Override
	public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo) {
		// TODO Auto-generated method stub
		return chatDao.newChat(dealNo, senderNo, receiverNo);
	}

	@Override
	public Integer disconnectChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return chatDao.disconnectChat(chatNo);
	}

	@Override
	public Integer sendChat(Chat chat) {
		// TODO Auto-generated method stub
		return chatDao.sendChat(chat);
	}

	@Override
	public List<Chat> findChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return chatDao.findChat(chatNo);
	}

	@Override
	public List<Chat> findChatList(Integer userNo) {
		// TODO Auto-generated method stub
		return chatDao.findChatList(userNo);
	}

	@Override
	public List<Chat> findBeforeChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return chatDao.findBeforeChat(chatNo);
	}

}
