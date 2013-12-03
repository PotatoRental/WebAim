package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/2/13
 * Time: 12:46 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "StudentOutcome_CourseOutcome")
public class StudentOutcomeCourseOutcomeMapping {
    @Id
    @Column
    private int id;

    @ManyToOne
    @JoinColumn(name = "studentOutcomeId", referencedColumnName = "id")
    private StudentOutcome studentOutcome;

    @ManyToOne
    @JoinColumn(name = "courseOutcomeId", referencedColumnName = "sequenceNumber")
    private CourseOutcome courseOutcome;

    @Column
    private String rationale;

    @Column
    private boolean assessed;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public StudentOutcome getStudentOutcome() {
        return studentOutcome;
    }

    public void setStudentOutcome(StudentOutcome studentOutcome) {
        this.studentOutcome = studentOutcome;
    }

    public CourseOutcome getCourseOutcome() {
        return courseOutcome;
    }

    public void setCourseOutcome(CourseOutcome courseOutcome) {
        this.courseOutcome = courseOutcome;
    }

    public String getRationale() {
        return rationale;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
    }

    public boolean isAssessed() {
        return assessed;
    }

    public void setAssessed(boolean assessed) {
        this.assessed = assessed;
    }
}
