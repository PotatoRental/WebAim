package com.aim.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

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
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<StudentOutcomeCourseOutcomeMapping> studentOutcomeCourseOutcomeMappings;

    @OneToMany(mappedBy = "courseOutcome")
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<CourseOfferingDirectAssessment> courseOfferingDirectAssessments;

    @OneToMany(mappedBy = "courseOutcome")
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<CourseOfferingOutcomeInformation> courseOfferingOutcomeInformations;

    public List<CourseOfferingDirectAssessment> getCourseOfferingDirectAssessments() {
        return courseOfferingDirectAssessments;
    }

    public void setCourseOfferingDirectAssessments(List<CourseOfferingDirectAssessment> courseOfferingDirectAssessments) {
        this.courseOfferingDirectAssessments = courseOfferingDirectAssessments;
    }

    public List<CourseOfferingOutcomeInformation> getCourseOfferingOutcomeInformations() {
        return courseOfferingOutcomeInformations;
    }

    public void setCourseOfferingOutcomeInformations(List<CourseOfferingOutcomeInformation> courseOfferingOutcomeInformations) {
        this.courseOfferingOutcomeInformations = courseOfferingOutcomeInformations;
    }

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
