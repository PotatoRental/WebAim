package com.aim.service;

import com.aim.model.UserAccount;
import org.springframework.stereotype.Service;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 3:33 AM
 */
@Service
public interface UserService {

    public UserAccount getUserById(String id);

}
