package com.aim.repository;

import com.aim.dao.UserDao;
import com.aim.model.Course;
import com.aim.model.UserAccount;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
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
public abstract class UserDaoImpl implements UserDao {

    private static final Logger logger = Logger.getLogger(UserDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<UserAccount> getAllUsers() {
        logger.info("User is getting all users.");

        return sessionFactory.getCurrentSession()
                .createSQLQuery("select * from UserAccount")
                .list();
    }

    @Transactional
    public UserAccount getUserById(String userId) {
        return (UserAccount) sessionFactory.getCurrentSession()
                .createQuery("from UserAccount where id = :userId")
                .setString("userId",userId)
                .uniqueResult();
    }

    @Transactional
    public Integer getNumUsers() {
        logger.info("Testing first course loading");
        return (Integer) sessionFactory.getCurrentSession()
                .createSQLQuery("select count(*) from UserAccount")
                .uniqueResult();
    }

    @Transactional
    public List<UserAccount> getUserByUsername(String username) {
        // TODO null return
        logger.info("User is getting all users by username");
        return null;
    }
}
