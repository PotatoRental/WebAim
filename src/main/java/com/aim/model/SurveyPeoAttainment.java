package com.aim.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 9:22 PM
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.IdClass(com.aim.model.SurveyPeoAttainmentPK.class)
@javax.persistence.Table(name = "Survey_PEOAttainment", schema = "", catalog = "potatoaim")
@Entity
public class SurveyPeoAttainment {
    private int surveyId;

    @javax.persistence.Column(name = "surveyId")
    @Id
    public int getSurveyId() {
        return surveyId;
    }

    public void setSurveyId(int surveyId) {
        this.surveyId = surveyId;
    }

    private String peoId;

    @javax.persistence.Column(name = "peoId")
    @Id
    public String getPeoId() {
        return peoId;
    }

    public void setPeoId(String peoId) {
        this.peoId = peoId;
    }

    private Integer attainmentLevel;

    @javax.persistence.Column(name = "attainmentLevel")
    @Basic
    public Integer getAttainmentLevel() {
        return attainmentLevel;
    }

    public void setAttainmentLevel(Integer attainmentLevel) {
        this.attainmentLevel = attainmentLevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SurveyPeoAttainment that = (SurveyPeoAttainment) o;

        if (surveyId != that.surveyId) return false;
        if (attainmentLevel != null ? !attainmentLevel.equals(that.attainmentLevel) : that.attainmentLevel != null)
            return false;
        if (peoId != null ? !peoId.equals(that.peoId) : that.peoId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = surveyId;
        result = 31 * result + (peoId != null ? peoId.hashCode() : 0);
        result = 31 * result + (attainmentLevel != null ? attainmentLevel.hashCode() : 0);
        return result;
    }
}
