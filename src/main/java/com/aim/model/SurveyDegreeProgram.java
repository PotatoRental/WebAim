package com.aim.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 8:34 PM
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.IdClass(com.aim.model.SurveyDegreeProgramPK.class)
@javax.persistence.Table(name = "Survey_DegreeProgram", schema = "", catalog = "potatoaim")
@Entity
public class SurveyDegreeProgram {
    private int surveyId;

    @javax.persistence.Column(name = "surveyId")
    @Id
    public int getSurveyId() {
        return surveyId;
    }

    public void setSurveyId(int surveyId) {
        this.surveyId = surveyId;
    }

    private String degreeProgramId;

    @javax.persistence.Column(name = "degreeProgramId")
    @Id
    public String getDegreeProgramId() {
        return degreeProgramId;
    }

    public void setDegreeProgramId(String degreeProgramId) {
        this.degreeProgramId = degreeProgramId;
    }

    private Integer peoAttainmentLevel;

    @javax.persistence.Column(name = "peoAttainmentLevel")
    @Basic
    public Integer getPeoAttainmentLevel() {
        return peoAttainmentLevel;
    }

    public void setPeoAttainmentLevel(Integer peoAttainmentLevel) {
        this.peoAttainmentLevel = peoAttainmentLevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SurveyDegreeProgram that = (SurveyDegreeProgram) o;

        if (surveyId != that.surveyId) return false;
        if (degreeProgramId != null ? !degreeProgramId.equals(that.degreeProgramId) : that.degreeProgramId != null)
            return false;
        if (peoAttainmentLevel != null ? !peoAttainmentLevel.equals(that.peoAttainmentLevel) : that.peoAttainmentLevel != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = surveyId;
        result = 31 * result + (degreeProgramId != null ? degreeProgramId.hashCode() : 0);
        result = 31 * result + (peoAttainmentLevel != null ? peoAttainmentLevel.hashCode() : 0);
        return result;
    }
}
