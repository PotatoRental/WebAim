package com.aim.repository;

import com.aim.dao.UserDao;
import com.aim.model.UserAccount;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.lang.Integer;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:18 AM
 */
@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    private static final Logger logger = Logger.getLogger(UserDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    public List<UserAccount> getAllUsers() {
        logger.info("User is getting all users.");

        return sessionFactory.getCurrentSession()
                .createQuery("from UserAccount")
                .list();
    }

    public UserAccount getUserById(String userId) {
        return (UserAccount) sessionFactory.getCurrentSession()
                .createQuery("from UserAccount where id = :userId")
                .setString("userId",userId)
                .uniqueResult();
    }

    public UserAccount getUserByUsername(String username) {
        logger.info("User is getting all users by username");
        return (UserAccount) sessionFactory.getCurrentSession()
                .createQuery("from UserAccount where username = :username")
                .setString("username", username)
                .uniqueResult();
    }

    @Override
    public List<UserAccount> getAllInstructors() {
        logger.info("User is geting all instructor class user");
        return (List<UserAccount>) sessionFactory.getCurrentSession()
                .createQuery("")
                .list();
    }

}
