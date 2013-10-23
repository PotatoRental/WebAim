package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 10/22/13
 * Time: 10:45 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity

@Table(name = "DEGREEPROGRAM")
public class DegreeProgram {
    @Id
    @Column(nullable = false)
    private String id;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String department;

    @ManyToMany(mappedBy = "degreeprograms")
    private List<UserAccount> useraccounts;

    @ManyToMany(mappedBy = "degreeprograms")
    private List<Course> courses;

    @OneToMany(mappedBy = "degreeprogram")
    private List<PEO> peos;

    @OneToMany(mappedBy = "degreeprogram")
    private List<StudentOutcome> studentoutcomes;

    public List<StudentOutcome> getStudentoutcomes() {
        return studentoutcomes;
    }

    public void setStudentoutcomes(List<StudentOutcome> studentoutcomes) {
        this.studentoutcomes = studentoutcomes;
    }

    public List<UserAccount> getUseraccounts() {
        return useraccounts;
    }

    public void setUseraccounts(List<UserAccount> useraccounts) {
        this.useraccounts = useraccounts;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public List<PEO> getPeos() {
        return peos;
    }

    public void setPeos(List<PEO> peos) {
        this.peos = peos;
    }
}
