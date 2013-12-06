package com.aim.dao;

import com.aim.model.Course;
import com.aim.model.CourseOffering;
import com.aim.model.DegreeProgram;
import com.aim.model.UserAccount;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 2:21 AM
 */
public interface CourseDao {
    public List<Course> getAllCourses();
    public List<Course> getCoursesByInstructor(String instructorId);
    public List<Course> getCoursesByCoordinator(String ccName);
    public List<Course> getCoursesByDegreeProgram (String programId);
    public List<DegreeProgram> getAllDegreeProgram();
    public DegreeProgram getDegreeProgramById(String degreeId);
    public List<CourseOffering> getOfferingsByCoordinator(String ccName);
    public Course getCourseById(String courseId);
    public Integer getNumCourses();
    public void saveCourse(Course course);
    public void addCourse(Course course);
    public List<CourseOffering> getAllCourseOfferings();
    public List<CourseOffering> getMissingInfoByCIC();
    public List<CourseOffering> getMissingInfoByCC();
    public List<CourseOffering> getMissingInfoByInstructor();
    public CourseOffering getCourseOfferingById(Integer offeringId);
    public void saveProgram(DegreeProgram degreeProgram);
    public void saveCourseOffering(CourseOffering offering);

    public void addProgram(DegreeProgram program);
}
