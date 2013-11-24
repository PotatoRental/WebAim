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
@Entity
public class CourseOfferingDirectAssessment {
    private int id;

    @javax.persistence.Column(name = "id")
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String assessmentInstrument;

    @javax.persistence.Column(name = "assessmentInstrument")
    @Basic
    public String getAssessmentInstrument() {
        return assessmentInstrument;
    }

    public void setAssessmentInstrument(String assessmentInstrument) {
        this.assessmentInstrument = assessmentInstrument;
    }

    private Integer thresholdScore;

    @javax.persistence.Column(name = "thresholdScore")
    @Basic
    public Integer getThresholdScore() {
        return thresholdScore;
    }

    public void setThresholdScore(Integer thresholdScore) {
        this.thresholdScore = thresholdScore;
    }

    private String rationale;

    @javax.persistence.Column(name = "rationale")
    @Basic
    public String getRationale() {
        return rationale;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
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

        CourseOfferingDirectAssessment that = (CourseOfferingDirectAssessment) o;

        if (id != that.id) return false;
        if (assessmentInstrument != null ? !assessmentInstrument.equals(that.assessmentInstrument) : that.assessmentInstrument != null)
            return false;
        if (attainmentLevel != null ? !attainmentLevel.equals(that.attainmentLevel) : that.attainmentLevel != null)
            return false;
        if (rationale != null ? !rationale.equals(that.rationale) : that.rationale != null) return false;
        if (thresholdScore != null ? !thresholdScore.equals(that.thresholdScore) : that.thresholdScore != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (assessmentInstrument != null ? assessmentInstrument.hashCode() : 0);
        result = 31 * result + (thresholdScore != null ? thresholdScore.hashCode() : 0);
        result = 31 * result + (rationale != null ? rationale.hashCode() : 0);
        result = 31 * result + (attainmentLevel != null ? attainmentLevel.hashCode() : 0);
        return result;
    }
}
