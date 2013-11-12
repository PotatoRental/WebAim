package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 10/22/13
 * Time: 11:36 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "PEO")
public class PEO {

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
    private Integer targetAttainment;

    @Column(nullable = false)
    private String validityPeriod;

    @ManyToOne
    @JoinColumn(name = "degreeProgramId")
    private DegreeProgram degreeprogram;

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
}
