package com.freshmarket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.UserDao;
import com.freshmarket.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
    private SqlSession sqlSession;
	
	//Setter Injection
    public void setSqlSession(SqlSession sqlSession){
    	this.sqlSession=sqlSession;
    }
    
    //Default Constructor
    public UserDaoImpl() {
		// TODO Auto-generated constructor stub
       	System.out.println("__________________________");
    	System.out.println("____User_Dao_Impl_Call____");
    	System.out.println("__________________________");
	}
	
	@Override
	public Integer addUser(User user) {
		return sqlSession.insert("UserMapper.addUser", user);
	}

	@Override
	public User findUser(Integer userNo) {
		return sqlSession.selectOne("UserMapper.findUser", userNo);
	}
	
	@Override
	public User findUser(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("UserMapper.findUser", email);
	}

	@Override
	public Integer updateUser(User user) {
		return sqlSession.update("UserMapper.updateUser", user);
	}

	@Override
	public Integer removeUser(Integer userNo) {
		return sqlSession.delete("UserMapper.removeUser", userNo);
	}

	@Override
	public List<User> findUserList(Search search) {
		return sqlSession.selectList("UserMapper.findUserList", search);
	}

	@Override
	public Boolean isDuplication(String email) {
		return sqlSession.selectOne("UserMapper.isDuplication", email);
	}

	@Override
	public Integer pairingUser(User user) {
		return null;
	}


}
