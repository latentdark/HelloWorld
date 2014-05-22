package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.freshmarket.common.Search;
import com.freshmarket.dao.UserDao;
import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;

    public void setUserDao(UserDao userDao){
    	this.userDao=userDao;
    }
    
    public UserServiceImpl() {
		// TODO Auto-generated constructor stub
    	System.out.println("__________________________");
    	System.out.println("__User_Service_Impl_Call__");
    	System.out.println("__________________________");
	}

	@Override
	public Integer addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

	@Override
	public User findUser(Integer userNo) {
		// TODO Auto-generated method stub
		return userDao.findUser(userNo);
	}
	
	@Override
	public User findUser(String email) {
		// TODO Auto-generated method stub
		return userDao.findUser(email);
	}

	@Override
	public Integer updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user);
	}

	@Override
	public Integer removeUser(Integer userNo) {
		// TODO Auto-generated method stub
		return userDao.removeUser(userNo);
	}

	@Override
	public List<User> findUserList(Search search) {
		// TODO Auto-generated method stub
		return userDao.findUserList(search);
	}

	@Override
	public Boolean isDuplication(String email) {
		// TODO Auto-generated method stub
		return userDao.isDuplication(email);
	}

	@Override
	public Integer pairingUser(User user) {
		// TODO Auto-generated method stub
		return userDao.pairingUser(user);
	}

}
