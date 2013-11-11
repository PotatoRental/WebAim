package com.aim.dao;

import com.aim.model.Course;
import com.aim.model.UserAccount;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:13 AM
 */
public interface UserDao {

    public List<UserAccount> getAllUsers();
}
