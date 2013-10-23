package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/22/13
 * Time: 11:27 PM
 */
@Entity
@Table(name = "StudentOutcome")
public class StudentOutcome {

    @Column
    @ManyToOne(cascade = CascadeType.ALL)
    private List<CourseOutcome> courseOutcomes;

    @Column private String description;

    @ManyToOne
    @JoinColumn(name = "DP_ID")
    private DegreeProgram degreeprogram;

    public List<CourseOutcome> getCourseOutcomes() {
        return courseOutcomes;
    }

    public void setCourseOutcomes(List<CourseOutcome> courseOutcomes) {
        this.courseOutcomes = courseOutcomes;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public DegreeProgram getDegreeprogram() {
        return degreeprogram;
    }

    public void setDegreeprogram(DegreeProgram degreeprogram) {
        this.degreeprogram = degreeprogram;
    }
}
