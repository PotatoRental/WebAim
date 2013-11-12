package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/22/13
 * Time: 11:27 PM
 */
@Entity
@Table(name = "StudentOutcome")
public class StudentOutcome {

    @Id
    @Column(nullable = false)
    private String id;

    @Column(nullable = false)
    private Integer sequenceNumber;

    @Column(nullable = false)
    private String shortName;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private Integer targetDirectAssessmentAttainmentLevel;

    @Column(nullable = false)
    private Integer targetSurveyAssessmentAttainmentLevel;

    @ManyToOne
    @JoinColumn(name = "degreeProgramId")
    private DegreeProgram degreeprogram;

    @ManyToMany(mappedBy = "studentOutcomes")
    private List<CourseOutcome> courseOutcomes;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public DegreeProgram getDegreeprogram() {
        return degreeprogram;
    }

    public void setDegreeprogram(DegreeProgram degreeprogram) {
        this.degreeprogram = degreeprogram;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public Integer getTargetDirectAssessmentAttainmentLevel() {
        return targetDirectAssessmentAttainmentLevel;
    }

    public void setTargetDirectAssessmentAttainmentLevel(Integer targetDirectAssessmentAttainmentLevel) {
        this.targetDirectAssessmentAttainmentLevel = targetDirectAssessmentAttainmentLevel;
    }

    public Integer getTargetSurveyAssessmentAttainmentLevel() {
        return targetSurveyAssessmentAttainmentLevel;
    }

    public void setTargetSurveyAssessmentAttainmentLevel(Integer targetSurveyAssessmentAttainmentLevel) {
        this.targetSurveyAssessmentAttainmentLevel = targetSurveyAssessmentAttainmentLevel;
    }
}
