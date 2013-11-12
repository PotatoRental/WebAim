package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 10/22/13
 * Time: 11:16 PM
 * To change this template use File | Settings | File Templates.
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

    //TODO: add fields and mappings for course coordinator and ACCs.

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
}