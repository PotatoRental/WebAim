package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 10/22/13
 * Time: 11:16 PM
 */

@Entity
@Table(name = "Course")
public class Course {
    @Id
    @Column(nullable = false)
    private String id;

    @Column(nullable = false)
    private String name;

    @ManyToMany
    @JoinTable (name = "Course_DegreeProgram",
            joinColumns =
            @JoinColumn(name = "courseId", referencedColumnName = "id"),
            inverseJoinColumns =
            @JoinColumn(name = "degreeProgramId", referencedColumnName = "id")
    )
    private List<DegreeProgram> degreeprograms;

    @OneToMany(mappedBy = "course")
    private List<CourseOutcome> courseOutcomes;

    @ManyToOne
    @JoinColumn(name = "courseCoordinatorUsername", referencedColumnName = "username")
    private UserAccount courseCoordinator;

    @ManyToOne
    @JoinColumn(name = "alternateCourseCoordinatorUsername", referencedColumnName = "username")
    private UserAccount alternateCourseCoordinator;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<DegreeProgram> getDegreeprograms() {
        return degreeprograms;
    }

    public void setDegreeprograms(List<DegreeProgram> degreeprograms) {
        this.degreeprograms = degreeprograms;
    }

    public List<CourseOutcome> getCourseOutcomes() {
        return courseOutcomes;
    }

    public void setCourseOutcomes(List<CourseOutcome> courseOutcomes) {
        this.courseOutcomes = courseOutcomes;
    }

    public UserAccount getCourseCoordinator() {
        return courseCoordinator;
    }

    public void setCourseCoordinator(UserAccount courseCoordinator) {
        this.courseCoordinator = courseCoordinator;
    }

    public UserAccount getAlternateCourseCoordinator() {
        return alternateCourseCoordinator;
    }

    public void setAlternateCourseCoordinator(UserAccount alternateCourseCoordinator) {
        this.alternateCourseCoordinator = alternateCourseCoordinator;
    }
}