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

    @Column(nullable = false, length = 8000)
    private String description;

    @Column(nullable = false)
    private Float targetDirectAssessmentAttainmentLevel;

    @Column(nullable = false)
    private Float targetSurveyAssessmentAttainmentLevel;

    @Column(nullable = false)
    private String validityPeriod;

    @OneToMany(mappedBy = "studentOutcome")
    private List<StudentOutcomeCourseOutcomeMapping> studentOutcomeCourseOutcomeMappings;

    @ManyToOne
    @JoinColumn(name = "degreeProgramId")
    private DegreeProgram degreeprogram;

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

    public Float getTargetDirectAssessmentAttainmentLevel() {
        return targetDirectAssessmentAttainmentLevel;
    }

    public void setTargetDirectAssessmentAttainmentLevel(Float targetDirectAssessmentAttainmentLevel) {
        this.targetDirectAssessmentAttainmentLevel = targetDirectAssessmentAttainmentLevel;
    }

    public Float getTargetSurveyAssessmentAttainmentLevel() {
        return targetSurveyAssessmentAttainmentLevel;
    }

    public void setTargetSurveyAssessmentAttainmentLevel(Float targetSurveyAssessmentAttainmentLevel) {
        this.targetSurveyAssessmentAttainmentLevel = targetSurveyAssessmentAttainmentLevel;
    }

    public String getValidityPeriod() {
        return validityPeriod;
    }

    public void setValidityPeriod(String validityPeriod) {
        this.validityPeriod = validityPeriod;
    }

    public List<StudentOutcomeCourseOutcomeMapping> getStudentOutcomeCourseOutcomeMappings() {
        return studentOutcomeCourseOutcomeMappings;
    }

    public void setStudentOutcomeCourseOutcomeMappings(List<StudentOutcomeCourseOutcomeMapping> studentOutcomeCourseOutcomeMappings) {
        this.studentOutcomeCourseOutcomeMappings = studentOutcomeCourseOutcomeMappings;
    }
}
