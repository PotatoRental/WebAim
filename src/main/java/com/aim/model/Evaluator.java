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
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "username", referencedColumnName = "username")
    private UserAccount userAccount;

    @Column
    private String evaluationPeriod;

    public UserAccount getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(UserAccount userAccount) {
        this.userAccount = userAccount;
    }

    public String getEvaluationPeriod() {
        return evaluationPeriod;
    }

    public void setEvaluationPeriod(String evaluationPeriod) {
        this.evaluationPeriod = evaluationPeriod;
    }
}
