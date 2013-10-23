package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/22/13
 * Time: 10:22 PM
 */
@Entity
@Table(name = "EVALUATOR")
public class Evaluator extends UserAccount {
    @Column private String evalPeriod;

    public String getEvalPeriod() {
        return evalPeriod;
    }

    public void setEvalPeriod(String evalPeriod) {
        this.evalPeriod = evalPeriod;
    }
}
