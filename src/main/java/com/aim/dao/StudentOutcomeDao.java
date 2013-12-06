package com.aim.dao;

import com.aim.model.DegreeProgram;
import com.aim.model.StudentOutcome;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 12/3/13
 * Time: 1:12 AM
 * To change this template use File | Settings | File Templates.
 */
public interface StudentOutcomeDao {

    public List<StudentOutcome> getAllStudentOutcomes();

    public StudentOutcome getStudentOutcomeById(String outcomeId);
    public List<StudentOutcome> getStudentOutcomeProgram(DegreeProgram degreeProgram);
    public List<String> getStudentOutcomeCourseOutcome();
}
