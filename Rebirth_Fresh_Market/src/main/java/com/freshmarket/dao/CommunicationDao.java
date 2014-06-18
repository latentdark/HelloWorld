package com.freshmarket.dao;

import java.util.List;

import com.freshmarket.domain.Chat;
import com.freshmarket.domain.Item;

public interface CommunicationDao {

    public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo);

    public Integer disconnectChat(Integer chatNo);

    public Integer sendChat(Chat chat);

    public List<Chat> findChat(Integer chatNo);

    public List<Chat> findChatList(Integer userNo);

    public List<Chat> findBeforeChat(Integer chatNo);
    
    public Integer addInquire(Integer userNo, Integer itemNo, String content);
    
    public Integer removeInquire(Integer userNo, Integer itemNo);
    
    public List<Item> findInquireList(Integer userNo);
}
