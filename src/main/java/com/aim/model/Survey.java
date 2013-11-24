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
public class Survey {
    private int id;

    @javax.persistence.Column(name = "id")
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String groups;

    @javax.persistence.Column(name = "groups")
    @Basic
    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    private String initiator;

    @javax.persistence.Column(name = "initiator")
    @Basic
    public String getInitiator() {
        return initiator;
    }

    public void setInitiator(String initiator) {
        this.initiator = initiator;
    }

    private String semester;

    @javax.persistence.Column(name = "semester")
    @Basic
    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    private String result;

    @javax.persistence.Column(name = "result")
    @Basic
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Survey survey = (Survey) o;

        if (id != survey.id) return false;
        if (groups != null ? !groups.equals(survey.groups) : survey.groups != null) return false;
        if (initiator != null ? !initiator.equals(survey.initiator) : survey.initiator != null) return false;
        if (result != null ? !result.equals(survey.result) : survey.result != null) return false;
        if (semester != null ? !semester.equals(survey.semester) : survey.semester != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result1 = id;
        result1 = 31 * result1 + (groups != null ? groups.hashCode() : 0);
        result1 = 31 * result1 + (initiator != null ? initiator.hashCode() : 0);
        result1 = 31 * result1 + (semester != null ? semester.hashCode() : 0);
        result1 = 31 * result1 + (result != null ? result.hashCode() : 0);
        return result1;
    }
}
