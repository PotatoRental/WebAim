package com.aim.repository;

import com.aim.dao.UserDao;
import com.aim.model.Course;
import org.apache.log4j.Logger;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:18 AM
 */
public abstract class UserDaoImpl implements UserDao {

    private static final Logger logger = Logger.getLogger(UserDaoImpl.class);

    public List<Course> getAllCourses() {
        // TODO null return
        logger.info("User is getting all courses.");
        return null;
    }
    public List<Course> getCourseBySemester() {
        // TODO null return
        logger.info("User is getting all courses in a semester.");
        return null;
    }
}
