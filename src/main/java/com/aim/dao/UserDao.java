package com.aim.dao;

import com.aim.model.Evaluator;
import com.aim.model.Role;
import com.aim.model.UserAccount;

import java.util.List;

/**
 * User: milky
 * Date: 10/23/13
 * Time: 12:13 AM
 */
public interface UserDao {
    public List<UserAccount> getAllUsers();
    public UserAccount getUserById(String username);
    public List<UserAccount> getAllUserRole(Role role);
    public void modifyUser(UserAccount account);

    public void addUser(UserAccount newUser);
}
