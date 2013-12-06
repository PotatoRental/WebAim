package com.aim.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 10/22/13
 * Time: 11:36 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "PEO")
public class Peo {

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
    private Integer targetAttainment;

    @Column(nullable = false)
    private String validityPeriod;

    @OneToMany(mappedBy = "peo")
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<PEOAttainmentLevelFromSurvey> PEOAttainmentLevelFromSurveys;

    @ManyToOne
    @JoinColumn(name = "degreeProgramId")
    private DegreeProgram degreeprogram;

    public List<PEOAttainmentLevelFromSurvey> getPEOAttainmentLevelFromSurveys() {
        return PEOAttainmentLevelFromSurveys;
    }

    public void setPEOAttainmentLevelFromSurveys(List<PEOAttainmentLevelFromSurvey> PEOAttainmentLevelFromSurveys) {
        this.PEOAttainmentLevelFromSurveys = PEOAttainmentLevelFromSurveys;
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

    public void setSequenceNumber(Integer sequencenumber) {
        this.sequenceNumber = sequencenumber;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortname) {
        this.shortName = shortname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getTargetAttainment() {
        return targetAttainment;
    }

    public void setTargetAttainment(Integer targetattainment) {
        this.targetAttainment = targetattainment;
    }

    public String getValidityPeriod() {
        return validityPeriod;
    }

    public void setValidityPeriod(String validityperiod) {
        this.validityPeriod = validityperiod;
    }

    public DegreeProgram getDegreeprogram() {
        return degreeprogram;
    }

    public void setDegreeprogram(DegreeProgram degreeprogram) {
        this.degreeprogram = degreeprogram;
    }
/*
    //For getting attainment level of this peo
    private String year;
    private String group;
    private int count;

    public void setYear(String year) {
        this.year = year;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public double getAttainmentLevel(){
        double sum = 0;
        count = 0;
        for(PEOAttainmentLevelFromSurvey s : PEOAttainmentLevelFromSurveys){
            sum += getNextAttainmentLevel(s);
        }
        return sum/count;
    }

    private double getNextAttainmentLevel(PEOAttainmentLevelFromSurvey s)
    {
        Survey survey = s.getSurvey();
        String surveyGroup = survey.getGroups();
        if (survey.getSemester().contains(year))
        {
            if (group.contains(surveyGroup) ||
               (group.equals("both") && (surveyGroup.equals("alumni") || surveyGroup.equals("employers"))))
            {
                count++;
                return s.getAttainmentLevel();
            }
        }
        return 0;
    }*/
}