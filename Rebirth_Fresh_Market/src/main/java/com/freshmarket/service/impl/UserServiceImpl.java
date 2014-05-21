package com.freshmarket.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.freshmarket.common.Search;
import com.freshmarket.dao.UserDao;
import com.freshmarket.domain.User;
import com.freshmarket.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao){
    	this.userDao=userDao;
    }

	@Override
	public Integer addUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUser(Integer userNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer removeUser(Integer userNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findUserList(Search search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean isDuplication(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer pairingUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}


}
