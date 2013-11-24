package com.aim.service;

import com.aim.model.UserAccount;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 3:33 AM
 */
public interface UserService {
    public UserAccount getUserByUsername(String username);
}
