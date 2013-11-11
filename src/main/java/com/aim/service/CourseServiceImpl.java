package com.aim.service;

import com.aim.dao.CourseDao;
import com.aim.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 3:35 AM
 */
@Service
public class CourseServiceImpl implements CourseService {

    private CourseDao courseDao;

    @Autowired
    private CourseServiceImpl(CourseDao courseDao) {
        this.courseDao = courseDao;
    }

    public List<Course> getAllCourses() {
        return courseDao.getAllCourses();
    }

    public List<Course> getCoursesByInstructor() {
        return courseDao.getCoursesByInstructor();
    }

    public Integer getNumCourses() {
        return courseDao.getNumCourses();
    }
}
