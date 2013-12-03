package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/2/13
 * Time: 1:08 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Survey_PEOAttainment")
public class PEOAttainmentLevelFromSurvey {
    @Id
    @Column
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "surveyId", referencedColumnName = "id")
    private Survey survey;

    @ManyToOne
    @JoinColumn(name = "PeoId", referencedColumnName = "id")
    private Peo peo;

    @Column
    private Integer attainmentLevel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Survey getSurvey() {
        return survey;
    }

    public void setSurvey(Survey survey) {
        this.survey = survey;
    }

    public Peo getPeo() {
        return peo;
    }

    public void setPeo(Peo peo) {
        this.peo = peo;
    }

    public Integer getAttainmentLevel() {
        return attainmentLevel;
    }

    public void setAttainmentLevel(Integer attainmentLevel) {
        this.attainmentLevel = attainmentLevel;
    }
}
