package com.aim.repository;

import com.aim.dao.CourseDao;
import com.aim.model.*;
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

    public List<Course> getCoursesByCoordinator(String ccName) {
        logger.info("User is getting course by coordinator" + ccName);

        return sessionFactory.getCurrentSession()
                .createQuery("from Course where courseCoordinator = :ccName")
                .setString("ccName", ccName)
                .list();
    }

    public List<CourseOffering> getOfferingsByCoordinator(String ccName) {
        logger.info("User is getting course offering by coordinator" + ccName);

        //List<Course> courses = getCoursesByCoordinator(ccName);
        return sessionFactory.getCurrentSession()
                .createQuery("from CourseOffering where course.courseCoordinator = :ccName")
                .setString("ccName", ccName)
                .list();
    }

    public List<Course> getCoursesByDegreeProgram (String programId) {
        DegreeProgram degreeProgram = (DegreeProgram) sessionFactory.getCurrentSession()
                .createQuery("from DegreeProgram where id = :programId")
                .setString("programId", programId)
                .uniqueResult();

        return sessionFactory.getCurrentSession()
                .createQuery("from Course as course where :program in elements(course.degreeprograms)")
                .setEntity("program", degreeProgram)
                .list();
    }


    @Override
    public List<DegreeProgram> getAllDegreeProgram() {
        return sessionFactory.getCurrentSession()
                .createQuery("from DegreeProgram ")
                .list();
    }

    @Override
    public DegreeProgram getDegreeProgramById(String degreeId) {
        return (DegreeProgram) sessionFactory.getCurrentSession()
                .createQuery("from DegreeProgram degree where degree.id = :degreeId")
                .setString("degreeId", degreeId)
                .uniqueResult();
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

    @Override
    public void addCourse(Course course) {
        sessionFactory.getCurrentSession().save(course);
    }

    @Override
    public List<CourseOffering> getAllCourseOfferings() {
        return sessionFactory.getCurrentSession()
                .createQuery("from CourseOffering ")
                .list();
    }

    public List<CourseOffering> getMissingInfoByCIC(){
        logger.info("User tries to get missing course information provided by CIC");
        return sessionFactory.getCurrentSession()
                .createQuery ("from CourseOffering where cicReportPath is NULL")
                .list();

    }

    @Override
    public List<CourseOffering> getMissingInfoByCC() {
        logger.info("User tries to get missing course information provided by CC");
        return sessionFactory.getCurrentSession()
                .createQuery ("from CourseOffering where ccReportPath is NULL")
                .list();
    }


    /*

    syllabus, schedule of lectures, lecture
    notes (at least one file), assignments (at least one assignment, and at
    least one student sample for each quality level for each assignment),
    course outcome direct assessments (at least one for each course outcome
    used to assess the associated student outcome), course outcome attainment
    targets (for each course outcome), and end-of-semester report.

     */

    @Override
    public List<CourseOffering> getMissingInfoByInstructor() {
        logger.info("User tries to get missing course information provided by instructor");
        return sessionFactory.getCurrentSession()
                .createQuery ("from CourseOffering where syllabusPath is NULL" +
                        " or schedulePath is NULL or assignments is EMPTY" +
                        " or courseOfferingDirectAssessments is EMPTY" +
                        " or eosReportPath is NULL")
                .list();
    }

     public List<CourseOfferingDirectAssessment> getDirectAssessments(String id) {
         return sessionFactory.getCurrentSession()
                 .createQuery("from CourseOfferingDirectAssessment")
                 .list();
     }

    @Override
    public CourseOffering getCourseOfferingById(Integer offeringId) {

        return (CourseOffering) sessionFactory.getCurrentSession()
                .createQuery("from CourseOffering where id = :offeringId")
                .setInteger("offeringId", offeringId)
                .uniqueResult();
    }

    @Override
    public void saveProgram(DegreeProgram degreeProgram) {
        sessionFactory.getCurrentSession()
                .update(degreeProgram);
    }

    @Override
    public void saveCourseOffering(CourseOffering offering) {
        sessionFactory.getCurrentSession().update(offering);
    }

    @Override
    public void addProgram(DegreeProgram program) {
        sessionFactory.getCurrentSession().save(program);
    }
}
