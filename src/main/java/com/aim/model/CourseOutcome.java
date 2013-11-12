package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/22/13
 * Time: 11:23 PM
 */
@Entity
@Table(name = "CourseOutcome")
public class CourseOutcome {

    @Id
    @Column
    private Integer sequenceNumber;

    @Column private String rational;
    @Column private String description;
    @Column private boolean accessed;

    @ManyToOne
    @JoinColumn(name = "courseId")
    private Course course;

    @ManyToMany
    @JoinTable (name = "Student_Course_Outcome",
            joinColumns =
            @JoinColumn(name = "courseOutcomeId", referencedColumnName = "sequenceNumber"),
            inverseJoinColumns =
            @JoinColumn(name = "studentOutcomeId", referencedColumnName = "id")
    )
    private List<StudentOutcome> studentOutcomes;

    /*@Column private StudentOutcome studentOutcome;*/
    // TODO fix student outcome, needs table joining

    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    public String getRational() {
        return rational;
    }

    public void setRational(String rational) {
        this.rational = rational;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isAccessed() {
        return accessed;
    }

    public void setAccessed(boolean accessed) {
        this.accessed = accessed;
    }

/*    public StudentOutcome getStudentOutcome() {
        return studentOutcome;
    }

    public void setStudentOutcome(StudentOutcome studentOutcome) {
        this.studentOutcome = studentOutcome;
    }*/
}
