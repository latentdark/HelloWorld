package com.freshmarket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.dao.CommunicationDao;
import com.freshmarket.domain.Chat;
import com.freshmarket.domain.Item;

@Repository
public class CommunicationDaoImpl implements CommunicationDao {
    
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//Setter Injection
    public void setSqlSession(SqlSession sqlSession){
    	this.sqlSession=sqlSession;
    }
    
    //Default Contructor
    public CommunicationDaoImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("Communication_Dao_Impl_Call");
    	System.out.println("__________________________");
	}

	@Override
	public Integer newChat(Integer dealNo, Integer senderNo, Integer receiverNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer disconnectChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer sendChat(Chat chat) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Chat> findChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Chat> findChatList(Integer userNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Chat> findBeforeChat(Integer chatNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer addInquire(Integer userNo, Integer itemNo, String content) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer removeInquire(Integer userNo, Integer itemNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> findInquireList(Integer userNo) {
		// TODO Auto-generated method stub
		return null;
	}


}
