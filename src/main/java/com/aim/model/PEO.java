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
    private Integer sequencenumber;

    @Column(nullable = false)
    private String shortname;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private Integer targetattainment;

    @Column(nullable = false)
    private String validityperiod;

    @ManyToOne
    @JoinColumn(name = "DP_ID")
    private DegreeProgram degreeprogram;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getSequencenumber() {
        return sequencenumber;
    }

    public void setSequencenumber(Integer sequencenumber) {
        this.sequencenumber = sequencenumber;
    }

    public String getShortname() {
        return shortname;
    }

    public void setShortname(String shortname) {
        this.shortname = shortname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getTargetattainment() {
        return targetattainment;
    }

    public void setTargetattainment(Integer targetattainment) {
        this.targetattainment = targetattainment;
    }

    public String getValidityperiod() {
        return validityperiod;
    }

    public void setValidityperiod(String validityperiod) {
        this.validityperiod = validityperiod;
    }

    public DegreeProgram getDegreeprogram() {
        return degreeprogram;
    }

    public void setDegreeprogram(DegreeProgram degreeprogram) {
        this.degreeprogram = degreeprogram;
    }
}
