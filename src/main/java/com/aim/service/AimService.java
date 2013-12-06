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

    public List<Course> getCoursesByCoordinator(String ccName) {
        return courseDao.getCoursesByCoordinator(ccName);
    }
    public List<Course> getCoursesByDegreeProgram (String programId){
        return courseDao.getCoursesByDegreeProgram(programId);
    }

    public List<CourseOffering> getOfferingsByCoordinator(String ccName){
        return courseDao.getOfferingsByCoordinator(ccName);
    }

    public List<Minutes> getMinutesByProgramId(String id) {
        return minutesDao.getMinutesByProgramId(id);
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
        return userDao.getUserById(username);
    }

    public List<UserAccount> getAllCourseCoordinator() {
        return userDao.getAllUserRole(Role.ROLE_CC);
    }

    public List<UserAccount> getAllInstructor() {
        return userDao.getAllUserRole(Role.ROLE_INSTR);
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

    public List<StudentOutcome> getStudentOutcomeProgram(DegreeProgram degreeProgram){
        return studentOutcomeDao.getStudentOutcomeProgram(degreeProgram);
    }

    public List<String> getStudentOutcomeCourseOutcome() {
        return studentOutcomeDao.getStudentOutcomeCourseOutcome();
    }

    public List<Minutes> getAllMinutes() {
        return minutesDao.getAllMinutes();
    }

    public Minutes getMinutesById(String id) {
        return minutesDao.getMinutesById(id);
    }

    public void deleteMinutesById(String id) {
         minutesDao.deleteMinutesById(id);
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


    public List<CourseOffering> getMissingInfoByRole(String role) {
        if (role.equals("ROLE_CIC"))
            return courseDao.getMissingInfoByCIC();
        else if (role.equals("ROLE_CC"))
            return courseDao.getMissingInfoByCC();
        else
            return courseDao.getMissingInfoByInstructor();
    }
    public CourseOffering getCourseOfferingById(Integer offeringId) {
        return courseDao.getCourseOfferingById(offeringId);
    }

    public void saveMinutes(Minutes minutes) {
        minutesDao.modifyMinutes(minutes);
    }

    public void saveUser(UserAccount account) {
        userDao.modifyUser(account);
    }

    public void addUser(UserAccount newUser) {
        userDao.addUser(newUser);
    }

    public void saveProgram(DegreeProgram program) {
        courseDao.saveProgram(program);
    }

    public void addMinutes(Minutes minutes) {
        minutesDao.addMinutes(minutes);
    }

    public void saveCourseOffering(CourseOffering offering) {
        courseDao.saveCourseOffering(offering);
    }

    public void savePeo(StudentOutcome outcome) {
        peoDao.modifyPeo(outcome);
    }

    public void addPeo(StudentOutcome outcome) {
        peoDao.addPeo(outcome);
    }
}
