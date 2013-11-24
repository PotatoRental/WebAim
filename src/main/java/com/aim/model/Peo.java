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
public class Peo {
    private String id;

    @javax.persistence.Column(name = "id")
    @Id
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private Integer sequenceNumber;

    @javax.persistence.Column(name = "sequenceNumber")
    @Basic
    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    private String shortName;

    @javax.persistence.Column(name = "shortName")
    @Basic
    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
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

    private Integer targetAttainment;

    @javax.persistence.Column(name = "targetAttainment")
    @Basic
    public Integer getTargetAttainment() {
        return targetAttainment;
    }

    public void setTargetAttainment(Integer targetAttainment) {
        this.targetAttainment = targetAttainment;
    }

    private String validityPeriod;

    @javax.persistence.Column(name = "validityPeriod")
    @Basic
    public String getValidityPeriod() {
        return validityPeriod;
    }

    public void setValidityPeriod(String validityPeriod) {
        this.validityPeriod = validityPeriod;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Peo peo = (Peo) o;

        if (description != null ? !description.equals(peo.description) : peo.description != null) return false;
        if (id != null ? !id.equals(peo.id) : peo.id != null) return false;
        if (sequenceNumber != null ? !sequenceNumber.equals(peo.sequenceNumber) : peo.sequenceNumber != null)
            return false;
        if (shortName != null ? !shortName.equals(peo.shortName) : peo.shortName != null) return false;
        if (targetAttainment != null ? !targetAttainment.equals(peo.targetAttainment) : peo.targetAttainment != null)
            return false;
        if (validityPeriod != null ? !validityPeriod.equals(peo.validityPeriod) : peo.validityPeriod != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (sequenceNumber != null ? sequenceNumber.hashCode() : 0);
        result = 31 * result + (shortName != null ? shortName.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (targetAttainment != null ? targetAttainment.hashCode() : 0);
        result = 31 * result + (validityPeriod != null ? validityPeriod.hashCode() : 0);
        return result;
    }
}
