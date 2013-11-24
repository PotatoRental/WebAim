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
@Entity
public class StudentOutcome {
    private String id;

    @javax.persistence.Column(name = "id")
    @Id
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private Integer sequenceNumber;

    @javax.persistence.Column(name = "sequenceNumber")
    @Basic
    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    private String shortName;

    @javax.persistence.Column(name = "shortName")
    @Basic
    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    private String description;

    @javax.persistence.Column(name = "description")
    @Basic
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private Integer targetDirectAssessmentAttainmentLevel;

    @javax.persistence.Column(name = "targetDirectAssessmentAttainmentLevel")
    @Basic
    public Integer getTargetDirectAssessmentAttainmentLevel() {
        return targetDirectAssessmentAttainmentLevel;
    }

    public void setTargetDirectAssessmentAttainmentLevel(Integer targetDirectAssessmentAttainmentLevel) {
        this.targetDirectAssessmentAttainmentLevel = targetDirectAssessmentAttainmentLevel;
    }

    private Integer targetSurveyAssessmentAttainmentLevel;

    @javax.persistence.Column(name = "targetSurveyAssessmentAttainmentLevel")
    @Basic
    public Integer getTargetSurveyAssessmentAttainmentLevel() {
        return targetSurveyAssessmentAttainmentLevel;
    }

    public void setTargetSurveyAssessmentAttainmentLevel(Integer targetSurveyAssessmentAttainmentLevel) {
        this.targetSurveyAssessmentAttainmentLevel = targetSurveyAssessmentAttainmentLevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentOutcome that = (StudentOutcome) o;

        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (sequenceNumber != null ? !sequenceNumber.equals(that.sequenceNumber) : that.sequenceNumber != null)
            return false;
        if (shortName != null ? !shortName.equals(that.shortName) : that.shortName != null) return false;
        if (targetDirectAssessmentAttainmentLevel != null ? !targetDirectAssessmentAttainmentLevel.equals(that.targetDirectAssessmentAttainmentLevel) : that.targetDirectAssessmentAttainmentLevel != null)
            return false;
        if (targetSurveyAssessmentAttainmentLevel != null ? !targetSurveyAssessmentAttainmentLevel.equals(that.targetSurveyAssessmentAttainmentLevel) : that.targetSurveyAssessmentAttainmentLevel != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (sequenceNumber != null ? sequenceNumber.hashCode() : 0);
        result = 31 * result + (shortName != null ? shortName.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (targetDirectAssessmentAttainmentLevel != null ? targetDirectAssessmentAttainmentLevel.hashCode() : 0);
        result = 31 * result + (targetSurveyAssessmentAttainmentLevel != null ? targetSurveyAssessmentAttainmentLevel.hashCode() : 0);
        return result;
    }
}
