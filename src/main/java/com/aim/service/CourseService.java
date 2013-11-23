package com.aim.service;

import com.aim.dao.CourseDao;
import com.aim.model.Course;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 3:48 AM
 */
public interface CourseService {

    public List<Course> getAllCourses();

    public List<Course> getCoursesByInstructor(String instructorName);

    public Course getCourseById(String courseId);

    public Integer getNumCourses();
}
