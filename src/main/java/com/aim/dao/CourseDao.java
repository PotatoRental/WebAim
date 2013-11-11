package com.aim.dao;

import com.aim.model.Course;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 2:21 AM
 */
public interface CourseDao {
    public List<Course> getAllCourses();
    public List<Course> getCoursesByInstructor();
    public Course getCourseById(String courseId);
    public Integer getNumCourses();
}
