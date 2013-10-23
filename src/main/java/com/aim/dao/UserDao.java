package com.aim.dao;

import com.aim.model.Course;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:13 AM
 */
public interface UserDao {

    public List<Course> getAllCourses();
    public List<Course> getCourseBySemester();
}
