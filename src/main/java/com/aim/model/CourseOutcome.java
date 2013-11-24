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
public class CourseOutcome {
    private int sequenceNumber;

    @javax.persistence.Column(name = "sequenceNumber")
    @Id
    public int getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(int sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    private String description;

    @javax.persistence.Column(name = "description")
    @Basic
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private String rationale;

    @javax.persistence.Column(name = "rationale")
    @Basic
    public String getRationale() {
        return rationale;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
    }

    private Boolean assessed;

    @javax.persistence.Column(name = "assessed")
    @Basic
    public Boolean getAssessed() {
        return assessed;
    }

    public void setAssessed(Boolean assessed) {
        this.assessed = assessed;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CourseOutcome that = (CourseOutcome) o;

        if (sequenceNumber != that.sequenceNumber) return false;
        if (assessed != null ? !assessed.equals(that.assessed) : that.assessed != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (rationale != null ? !rationale.equals(that.rationale) : that.rationale != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = sequenceNumber;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (rationale != null ? rationale.hashCode() : 0);
        result = 31 * result + (assessed != null ? assessed.hashCode() : 0);
        return result;
    }
}
