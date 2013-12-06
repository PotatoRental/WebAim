package com.aim.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 11/12/13
 * Time: 12:33 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Survey")
public class Survey {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private Integer id;

    @Column
    private String groups;

    @Column
    private String initiator;

    @Column
    private String semester;

    @Column
    private String resultPath;

    @ManyToMany(cascade = CascadeType.ALL)
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<DegreeProgram> degreeprograms;

    @OneToMany(mappedBy = "survey")
    private List<PEOAttainmentLevelFromSurvey> PEOAttainmentLevelFromSurveys;

    public List<PEOAttainmentLevelFromSurvey> getPEOAttainmentLevelFromSurveys() {
        return PEOAttainmentLevelFromSurveys;
    }

    public void setPEOAttainmentLevelFromSurveys(List<PEOAttainmentLevelFromSurvey> PEOAttainmentLevelFromSurveys) {
        this.PEOAttainmentLevelFromSurveys = PEOAttainmentLevelFromSurveys;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    public String getInitiator() {
        return initiator;
    }

    public void setInitiator(String initiator) {
        this.initiator = initiator;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getResultPath() {
        return resultPath;
    }

    public void setResultPath(String result) {
        this.resultPath = result;
    }

    public List<DegreeProgram> getDegreeprograms() {
        return degreeprograms;
    }

    public void setDegreeprograms(List<DegreeProgram> degreeprograms) {
        this.degreeprograms = degreeprograms;
    }
}
