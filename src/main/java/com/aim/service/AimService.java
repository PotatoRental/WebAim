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
    private PeoDao peoDao;
    private StudentOutcomeDao studentOutcomeDao;
    private SurveyDao surveyDao;
    private UserDao userDao;

    @Autowired
    private AimService(CourseDao courseDao,
                       MinutesDao minutesDao,
                       PeoDao peoDao,
                       StudentOutcomeDao studentOutcomeDao,
                       SurveyDao surveyDao,
                       UserDao userDao) {
        this.courseDao = courseDao;
        this.minutesDao = minutesDao;
        this.peoDao = peoDao;
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

    public void addCourse(Course course) {
        courseDao.addCourse(course);
    }

    public void saveSurvey(Survey survey) {
        surveyDao.saveSurvey(survey);
    }

    public void aadSurvey(Survey survey) {
        surveyDao.addSurvey(survey);
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

    public Minutes getMinutesById(String id) {
        return minutesDao.getMinutesById(id);
    }

    public List<Peo> getAllPeos() {
        return peoDao.getAllPeos();
    }

    public List<Peo> getPeosByDegreeProgramId(String programId) {
        return peoDao.getPeosByDegreeProgramId(programId);
    }

    public Peo getPeoById(String peoId) {
        return peoDao.getPeoById(peoId);
    }

    public List<StudentOutcome> getAllStudentOutcomes() {
        return studentOutcomeDao.getAllStudentOutcomes();
    }

    public StudentOutcome getStudentOutcomeById(String outcomeId){
        return studentOutcomeDao.getStudentOutcomeById(outcomeId);
    }

    public List<Survey> getAllSurveys() {
        return surveyDao.getAllSurveys();
    }

    public Survey getSurveyById(String surveyId) {
        return surveyDao.getSurveyById(surveyId);
    }

    public void addSurvey(Survey survey) {
        surveyDao.addSurvey(survey);
    }

    public List<CourseOffering> getAllCourseOfferings() {
        return courseDao.getAllCourseOfferings();
    }
}
