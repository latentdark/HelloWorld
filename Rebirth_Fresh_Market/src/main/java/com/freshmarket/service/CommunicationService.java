package com.freshmarket.service;

import java.util.List;

import com.freshmarket.domain.Chat;
import com.freshmarket.domain.Comment;
import com.freshmarket.domain.Item;

public interface CommunicationService {

    public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo);

    public Integer disconnectChat(Integer chatNo);

    public Integer sendChat(Chat chat);

    public List<Chat> findChat(Integer chatNo);

    public List<Chat> findChatList(Integer userNo);

    public List<Chat> findBeforeChat(Integer chatNo);

    public Integer addInquire(Integer userNo, Integer itemNo, String content);
    
    public Integer removeInquire(Integer userNo, Integer itemNo);
    
    public List<Item> findInquireList(Integer userNo);
    
    public Integer addReply(Integer commentNo, Integer userNo, String content);
    
    public Integer removeReply(Integer replyNo);
    
    public List<Comment> findComment(Integer itemNo);
    
    public Integer updateComment(Integer commentNo, String content);
    
    public Integer updateReply(Integer replyNo, String content);
    
    public Integer removeComment(Integer commentNo);
    
    public Integer countComment(Integer itemNo);
}
