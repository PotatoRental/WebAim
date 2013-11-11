package com.aim.repository;

import com.aim.dao.UserDao;
import com.aim.model.Course;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
public abstract class UserDaoImpl implements UserDao {

    private static final Logger logger = Logger.getLogger(UserDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional(propagation = Propagation.MANDATORY)
    public List<Course> getAllCourses() {
        logger.info("User is getting all courses.");

        return sessionFactory.getCurrentSession()
                .createSQLQuery("select * from users")
                .list();
    }

    @Transactional(propagation = Propagation.MANDATORY)
    public Integer getNumUsers() {
        logger.info("Testing first course loading");
        return (Integer) sessionFactory.getCurrentSession()
                .createSQLQuery("select count(*) from users")
                .uniqueResult();
    }

    @Transactional(propagation = Propagation.MANDATORY)
    public List<Course> getCourseBySemester() {
        // TODO null return
        logger.info("User is getting all courses in a semester.");
        return null;
    }
}
