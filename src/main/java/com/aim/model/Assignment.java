package com.aim.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Qiang He
 * Date: 10/23/13
 * Time: 5:19 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Assignment")
public class Assignment {
    @Id
    @Column(nullable=false)
    private Integer id;

    @Column
    private String name;

    @Column
    private String descriptionPath;

    @OneToMany(mappedBy="assignment")
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<StudentSample> studentSampleList;

    @ManyToOne
    @JoinColumn(name = "courseOfferingId", referencedColumnName = "id")
    private CourseOffering courseOffering;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptionPath() {
        return descriptionPath;
    }

    public void setDescriptionPath(String description) {
        this.descriptionPath = description;
    }

    public List<StudentSample> getStudentSampleList() {
        return studentSampleList;
    }

    public void setStudentSampleList(List<StudentSample> studentSampleList) {
        this.studentSampleList = studentSampleList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public CourseOffering getCourseOffering() {
        return courseOffering;
    }

    public void setCourseOffering(CourseOffering courseOffering) {
        this.courseOffering = courseOffering;
    }
}
