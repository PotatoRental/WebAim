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

    @Column(length = 8000)
    private String description;

    @ManyToOne
    @JoinColumn(name = "courseId")
    private Course course;

    @OneToMany(mappedBy = "courseOutcome")
    private List<StudentOutcomeCourseOutcomeMapping> studentOutcomeCourseOutcomeMappings;

    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public List<StudentOutcomeCourseOutcomeMapping> getStudentOutcomeCourseOutcomeMappings() {
        return studentOutcomeCourseOutcomeMappings;
    }

    public void setStudentOutcomeCourseOutcomeMappings(List<StudentOutcomeCourseOutcomeMapping> studentOutcomeCourseOutcomeMappings) {
        this.studentOutcomeCourseOutcomeMappings = studentOutcomeCourseOutcomeMappings;
    }
}
