package com.aim.repository;

import com.aim.dao.CourseDao;
import com.aim.model.Course;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 2:23 AM
 */
@Repository
public class CourseDaoImpl implements CourseDao {

    private static final Logger logger = Logger.getLogger(CourseDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<Course> getAllCourses() {
        logger.info("User is getting all courses.");

        return sessionFactory.getCurrentSession()
                .createQuery("from Course")
                .list();
    }

    @Override
    public List<Course> getCoursesByInstructor() {
        return null;  //TODO override
    }

    @Override
    public Integer getNumCourses() {
        return null;  //ToDO override
    }
}
