package com.aim.dao;

import com.aim.model.Survey;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Monika Tuchowska
 * Date: 12/3/13
 * Time: 9:45 AM
 */
public interface SurveyDao {

    public List<Survey> getAllSurveys();
    public Survey getSurveyById(String surveyId);

}
