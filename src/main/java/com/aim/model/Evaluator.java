package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created with IntelliJ IDEA.
 * User: Jason + Yun
 * Date: 10/22/13
 * Time: 10:22 PM
 */
@Entity
@Table(name = "Evaluator")
public class Evaluator extends SchoolUser {

    @Column private String evalPeriod;

    public String getEvalPeriod() {
        return evalPeriod;
    }

    public void setEvalPeriod(String evalPeriod) {
        this.evalPeriod = evalPeriod;
    }
}
