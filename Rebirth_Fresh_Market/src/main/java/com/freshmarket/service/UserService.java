package com.freshmarket.service;

import java.util.List;

import com.freshmarket.common.Search;
import com.freshmarket.domain.User;

public interface UserService {

    public Integer addUser(User user);

    public User findUser(Integer userNo);
    
    public User findUser(String email);

    public Integer updateUser(User user);

    public Integer removeUser(Integer userNo);

    public List<User> findUserList(Search search);

    public Boolean isDuplication(String email);

    public Integer pairingUser(User user);

}
