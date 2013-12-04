package com.aim.repository;

import com.aim.dao.UserDao;
import com.aim.model.Role;
import com.aim.model.UserAccount;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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
                .createQuery("from UserAccount order by lastName")
                .list();
    }

    public UserAccount getUserById(String username) {
        logger.info("User is getting a user by username");
        return (UserAccount) sessionFactory.getCurrentSession()
                .createQuery("from UserAccount where username = :username")
                .setString("username", username)
                .uniqueResult();
    }

    @Override
    public List<UserAccount> getAllUserRole(Role role) {
        logger.info("User is geting all users with role");
        List<UserAccount> userlist = (List<UserAccount>) sessionFactory.getCurrentSession()
                .createQuery("from UserAccount ")
                .list();

        for (int i = userlist.size() - 1; i >= 0; i--)
            if (!userlist.get(i).getRoles().contains(role))
                userlist.remove(i);

        return userlist;
    }
}
