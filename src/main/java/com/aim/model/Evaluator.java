package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/1/13
 * Time: 11:47 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Evaluator")
public class Evaluator{
    @Id
    @Column
    private String username;

    @Column
    private String evaluationPeriod;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEvaluationPeriod() {
        return evaluationPeriod;
    }

    public void setEvaluationPeriod(String evaluationPeriod) {
        this.evaluationPeriod = evaluationPeriod;
    }
}
