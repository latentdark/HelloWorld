package com.freshmarket.dao;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.User;

public interface UserDao {

    public Integer addUser(User user);

    public User findUser(Integer userNo);

    public Integer updateUser(User user);

    public Integer removeUser(Integer userNo);

    public List<User> findUserList(Search search);

    public Boolean isDuplication(String email);

    public Integer pairingUser();

}
