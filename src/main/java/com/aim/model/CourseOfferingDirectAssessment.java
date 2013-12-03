package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/2/13
 * Time: 1:17 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table
public class CourseOfferingDirectAssessment {
    @Id
    @Column
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "courseOutcomeId", referencedColumnName = "sequenceNumber")
    private CourseOutcome courseOutcome;

    @ManyToOne
    @JoinColumn(name = "courseOfferingId", referencedColumnName = "id")
    private CourseOffering courseOffering;

    @Column
    private String assessmentInstrument;

    @Column
    private String rationale;

    @Column
    private Integer thresholdScore;

    @Column
    private Float attainmentLevel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public CourseOutcome getCourseOutcome() {
        return courseOutcome;
    }

    public void setCourseOutcome(CourseOutcome courseOutcome) {
        this.courseOutcome = courseOutcome;
    }

    public CourseOffering getCourseOffering() {
        return courseOffering;
    }

    public void setCourseOffering(CourseOffering courseOffering) {
        this.courseOffering = courseOffering;
    }

    public String getAssessmentInstrument() {
        return assessmentInstrument;
    }

    public void setAssessmentInstrument(String assessmentInstrument) {
        this.assessmentInstrument = assessmentInstrument;
    }

    public String getRationale() {
        return rationale;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
    }

    public Integer getThresholdScore() {
        return thresholdScore;
    }

    public void setThresholdScore(Integer thresholdScore) {
        this.thresholdScore = thresholdScore;
    }

    public Float getAttainmentLevel() {
        return attainmentLevel;
    }

    public void setAttainmentLevel(Float attainmentLevel) {
        this.attainmentLevel = attainmentLevel;
    }
}
