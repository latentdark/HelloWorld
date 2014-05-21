package com.freshmarket.service;

import java.util.List;

import com.freshmarket.domain.Chat;

public interface ChatService {

    public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo);

    public Integer disconnectChat(Integer chatNo);

    public Integer sendChat(Chat chat);

    public List<Chat> findChat(Integer chatNo);

    public List<Chat> findChatList(Integer userNo);

    public List<Chat> findBeforeChat(Integer chatNo);

}
