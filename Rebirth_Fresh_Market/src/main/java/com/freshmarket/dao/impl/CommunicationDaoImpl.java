package com.freshmarket.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.dao.CommunicationDao;
import com.freshmarket.domain.Chat;
import com.freshmarket.domain.Comment;
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
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("itemNo", itemNo);
		map.put("content", content);
		
		return sqlSession.insert("CommunicationMapper.addInquire", map)
				+ sqlSession.insert("CommunicationMapper.addComment", map);
	}

	@Override
	public Integer removeInquire(Integer userNo, Integer itemNo) {
		// TODO Auto-generated method stub
		HashMap map = new HashMap();
		map.put("userNo", userNo);
		map.put("itemNo", itemNo);
		
		return sqlSession.delete("CommunicationMapper.removeInquire", map);
	}

	@Override
	public List<Item> findInquireList(Integer userNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("CommunicationMapper.findInquireList", userNo);
	}

	@Override
	public Integer addComment(Integer itemNo, Integer userNo, String content){
		HashMap map = new HashMap();
		map.put("itemNo", itemNo);
		map.put("userNo", userNo);
		map.put("content", content);
		
		return sqlSession.insert("CommunicationMapper.addComment", map);
	}
	
	@Override
	public Integer addReply(Integer commentNo, Integer userNo, String content){
		HashMap map = new HashMap();
		map.put("commentNo", commentNo);
		map.put("userNo", userNo);
		map.put("content", content);
		
		return sqlSession.insert("CommunicationMapper.addReply", map);
	}
	
	@Override
	public Integer removeReply(Integer replyNo){
		return sqlSession.delete("CommunicationMapper.removeReply", replyNo);
	}
	
	@Override
	public List<Comment> findComment(Integer itemNo){
		return sqlSession.selectList("CommunicationMapper.findComment", itemNo);
	}
	
	@Override
	public Integer updateComment(Integer commentNo, String content){
		HashMap map = new HashMap();
		map.put("commentNo", commentNo);
		map.put("content", content);
		
		return sqlSession.update("CommunicationMapper.updateComment", map);
	}
    
	@Override
    public Integer updateReply(Integer replyNo, String content){
    	HashMap map = new HashMap();
		map.put("replyNo", replyNo);
		map.put("content", content);
		
		return sqlSession.update("CommunicationMapper.updateReply", map);
    }
    
	@Override
    public Integer removeComment(Integer commentNo){
    	return sqlSession.delete("CommunicationMapper.removeComment1", commentNo)
    			+ sqlSession.delete("CommunicationMapper.removeComment2", commentNo); 
    }
	
	@Override
    public Integer countComment(Integer itemNo){
    	return sqlSession.selectOne("CommunicationMapper.countComment", itemNo); 
    }
}
