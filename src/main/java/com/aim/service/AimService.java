package com.aim.service;

import com.aim.dao.*;
import com.aim.model.*;
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
    private MinutesDao minutesDao;
    private StudentOutcomeDao studentOutcomeDao;
    private SurveyDao surveyDao;
    private UserDao userDao;

    @Autowired
    private AimService(CourseDao courseDao,
                       MinutesDao minutesDao,
                       StudentOutcomeDao studentOutcomeDao,
                       SurveyDao surveyDao,
                       UserDao userDao) {
        this.courseDao = courseDao;
        this.minutesDao = minutesDao;
        this.studentOutcomeDao = studentOutcomeDao;
        this.surveyDao = surveyDao;
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

    public List<DegreeProgram> getAllDegreeProgram() {
        return courseDao.getAllDegreeProgram();
    }

    public DegreeProgram getDegreeProgramById(String degreeId) {
        return courseDao.getDegreeProgramById(degreeId);
    }

    public List<Minutes> getAllMinutes() {
        return minutesDao.getAllMinutes();
    }

    public List<StudentOutcome> getAllStudentOutcomes() {
        return studentOutcomeDao.getAllStudentOutcomes();
    }

    public List<Survey> getAllSurveys(){
        return surveyDao.getAllSurveys();
    }

}
