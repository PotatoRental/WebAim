package com.aim.service;

import com.aim.dao.UserDao;
import com.aim.model.UserAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 7:55 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;
//
//    @Autowired
//    public UserServiceImpl(UserDao userDao) {
//        this.userDao = userDao;
//    }

    @Override
    public UserAccount getUserByUsername(String username) {
        //return userDao.getUserByUsername(username);
        return null;
    }
}
