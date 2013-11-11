package com.aim.model;

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
    private String name;

    @Column
    private String description;

    @OneToMany(mappedBy="assignment")
    private List<StudentSample> studentSampleList;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<StudentSample> getStudentSampleList() {
        return studentSampleList;
    }

    public void setStudentSampleList(List<StudentSample> studentSampleList) {
        this.studentSampleList = studentSampleList;
    }
}
