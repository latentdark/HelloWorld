package com.freshmarket.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.freshmarket.common.Search;
import com.freshmarket.dao.UserDao;
import com.freshmarket.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
    private SqlSessionTemplate sqlSessionTemplate;

    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
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
	public Integer pairingUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
