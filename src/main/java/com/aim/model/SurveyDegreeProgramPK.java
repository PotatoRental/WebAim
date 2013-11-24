package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 9:22 PM
 * To change this template use File | Settings | File Templates.
 */
public class SurveyDegreeProgramPK implements Serializable {
    private int surveyId;
    private String degreeProgramId;

    @Id
    @Column(name = "surveyId")
    public int getSurveyId() {
        return surveyId;
    }

    public void setSurveyId(int surveyId) {
        this.surveyId = surveyId;
    }

    @Id@Column(name = "degreeProgramId")
    public String getDegreeProgramId() {
        return degreeProgramId;
    }

    public void setDegreeProgramId(String degreeProgramId) {
        this.degreeProgramId = degreeProgramId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SurveyDegreeProgramPK that = (SurveyDegreeProgramPK) o;

        if (surveyId != that.surveyId) return false;
        if (degreeProgramId != null ? !degreeProgramId.equals(that.degreeProgramId) : that.degreeProgramId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = surveyId;
        result = 31 * result + (degreeProgramId != null ? degreeProgramId.hashCode() : 0);
        return result;
}}
