package com.aim.service;

import com.aim.dao.CourseDao;
import com.aim.dao.StudentOutcomeDao;
import com.aim.dao.UserDao;
import com.aim.model.*;
import com.aim.repository.MinutesDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 3:35 AM
 */
@Service
public class AimService {

    private CourseDao courseDao;
    private MinutesDaoImpl minutesDaoImpl;
    private StudentOutcomeDao studentOutcomeDao;
    private UserDao userDao;

    @Autowired
    private AimService(CourseDao courseDao, UserDao userDao) {
        this.courseDao = courseDao;
        this.userDao = userDao;
    }

    public List<Course> getAllCourses() {
        return courseDao.getAllCourses();
    }

    public List<Course> getCoursesByInstructor(String instructorId) {
        return courseDao.getCoursesByInstructor(instructorId);
    }

    public Course getCourseById(String courseId) {
        return courseDao.getCourseById(courseId);
    }

    public Integer getNumCourses() {
        return courseDao.getNumCourses();
    }

    public List<UserAccount> getAllUsers() {
        return userDao.getAllUsers();
    }

    public UserAccount getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    public List<UserAccount> getAllCourseCoordinator() {
        return userDao.getAllUserRole(Role.ROLE_CC);
    }

    public void saveCourse(Course course) {
        courseDao.saveCourse(course);
    }

    public List<StudentOutcome> getAllStudentOutcomes() {
        return studentOutcomeDao.getAllStudentOutcomes();
    }

    public List<Minutes> getAllMinutes(){
        return minutesDaoImpl.getAllMinutes();
    }
}
