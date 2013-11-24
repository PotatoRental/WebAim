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
public class Evaluator {
    private String username;

    @javax.persistence.Column(name = "username")
    @Id
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String evaluationPeriod;

    @javax.persistence.Column(name = "evaluationPeriod")
    @Basic
    public String getEvaluationPeriod() {
        return evaluationPeriod;
    }

    public void setEvaluationPeriod(String evaluationPeriod) {
        this.evaluationPeriod = evaluationPeriod;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Evaluator evaluator = (Evaluator) o;

        if (evaluationPeriod != null ? !evaluationPeriod.equals(evaluator.evaluationPeriod) : evaluator.evaluationPeriod != null)
            return false;
        if (username != null ? !username.equals(evaluator.username) : evaluator.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (evaluationPeriod != null ? evaluationPeriod.hashCode() : 0);
        return result;
    }
}
