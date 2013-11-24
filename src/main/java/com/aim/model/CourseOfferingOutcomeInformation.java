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
public class CourseOfferingOutcomeInformation {
    private int id;

    @javax.persistence.Column(name = "id")
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    private Integer averageAttainmentRating;

    @javax.persistence.Column(name = "averageAttainmentRating")
    @Basic
    public Integer getAverageAttainmentRating() {
        return averageAttainmentRating;
    }

    public void setAverageAttainmentRating(Integer averageAttainmentRating) {
        this.averageAttainmentRating = averageAttainmentRating;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CourseOfferingOutcomeInformation that = (CourseOfferingOutcomeInformation) o;

        if (id != that.id) return false;
        if (averageAttainmentRating != null ? !averageAttainmentRating.equals(that.averageAttainmentRating) : that.averageAttainmentRating != null)
            return false;
        if (targetAttainment != null ? !targetAttainment.equals(that.targetAttainment) : that.targetAttainment != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (targetAttainment != null ? targetAttainment.hashCode() : 0);
        result = 31 * result + (averageAttainmentRating != null ? averageAttainmentRating.hashCode() : 0);
        return result;
    }
}
