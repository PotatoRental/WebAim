package com.aim.dao;

import com.aim.model.DegreeProgram;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:19 AM
 */
public interface EvaluatorDao {

    // TODO change to survey class
    public String getSurveyResult();
    public String getSurveyResultBy(DegreeProgram degreeProgram);
}
