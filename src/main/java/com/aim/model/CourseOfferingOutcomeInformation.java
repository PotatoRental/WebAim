package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/2/13
 * Time: 1:13 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table
public class CourseOfferingOutcomeInformation {
    @Id
    @Column
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "courseOutcomeId", referencedColumnName = "sequenceNumber")
    private CourseOutcome courseOutcome;

    @ManyToOne
    @JoinColumn(name = "courseOfferingId", referencedColumnName = "id")
    private CourseOffering courseOffering;

    @Column
    private Float targetAttainment;

    @Column
    private Float averageAttainmentRating;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public CourseOutcome getCourseOutcome() {
        return courseOutcome;
    }

    public void setCourseOutcome(CourseOutcome courseOutcome) {
        this.courseOutcome = courseOutcome;
    }

    public CourseOffering getCourseOffering() {
        return courseOffering;
    }

    public void setCourseOffering(CourseOffering courseOffering) {
        this.courseOffering = courseOffering;
    }

    public Float getTargetAttainment() {
        return targetAttainment;
    }

    public void setTargetAttainment(Float targetAttainment) {
        this.targetAttainment = targetAttainment;
    }

    public Float getAverageAttainmentRating() {
        return averageAttainmentRating;
    }

    public void setAverageAttainmentRating(Float averageAttainmentRating) {
        this.averageAttainmentRating = averageAttainmentRating;
    }
}
