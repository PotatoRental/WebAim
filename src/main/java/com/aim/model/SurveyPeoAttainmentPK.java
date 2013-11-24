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
public class SurveyPeoAttainmentPK implements Serializable {
    private int surveyId;
    private String peoId;

@Id@Column(name = "surveyId")
public int getSurveyId() {
    return surveyId;
}

    public void setSurveyId(int surveyId) {
        this.surveyId = surveyId;
    }

    @Id@Column(name = "peoId")
    public String getPeoId() {
        return peoId;
    }

    public void setPeoId(String peoId) {
        this.peoId = peoId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SurveyPeoAttainmentPK that = (SurveyPeoAttainmentPK) o;

        if (surveyId != that.surveyId) return false;
        if (peoId != null ? !peoId.equals(that.peoId) : that.peoId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = surveyId;
        result = 31 * result + (peoId != null ? peoId.hashCode() : 0);
        return result;
}}
