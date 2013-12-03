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
@Transactional
public class CourseDaoImpl implements CourseDao {

    private static final Logger logger = Logger.getLogger(CourseDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;


    public List<Course> getAllCourses() {
        logger.info("User is getting all courses.");

        return sessionFactory.getCurrentSession()
                .createQuery("from Course")
                .list();
    }

    public Course getCourseById(String courseId) {
        logger.info("User is getting course " + courseId);

        return (Course) sessionFactory.getCurrentSession()
                .createQuery("from Course where id = :courseId")
                .setString("courseId", courseId)
                .uniqueResult();
    }

    @Override
    public List<Course> getCoursesByInstructor(String instructorName) {
        logger.info("User is getting course by instructor" + instructorName);

        return sessionFactory.getCurrentSession()
                .createQuery("from Course where id = :instructorId")
                .setString("instructorId", instructorName)
                .list();
    }

    @Override
    public Integer getNumCourses() {
        return (Integer) sessionFactory.getCurrentSession()
                .createQuery("select count(course) from Course as course")
                .uniqueResult();
    }

    @Override
    public void saveCourse(Course course) {
        sessionFactory.getCurrentSession().update(course);
    }
}
