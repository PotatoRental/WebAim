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

@Table(name = "DegreeProgram")
public class DegreeProgram {
    @Id
    @Column(nullable = false)
    private String id;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String department;

    @ManyToMany(mappedBy = "degreeprograms")
    private List<Course> courses;

    @ManyToMany(mappedBy = "degreeprograms")
    private List<UserAccount> userAccounts;

    @OneToMany(mappedBy = "degreeprogram")
    private List<Peo> peos;

    @OneToMany(mappedBy = "degreeprogram")
    private List<StudentOutcome> studentOutcomes;

    public DegreeProgram() {
    }

    public List<StudentOutcome> getStudentOutcomes() {
        return studentOutcomes;
    }

    public void setStudentOutcomes(List<StudentOutcome> studentOutcomes) {
        this.studentOutcomes = studentOutcomes;
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
        this.id = id;
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

    public List<Peo> getPeos() {
        return peos;
    }

    public void setPeos(List<Peo> peos) {
        this.peos = peos;
    }

    public List<UserAccount> getUserAccounts() {
        return userAccounts;
    }

    public void setUserAccounts(List<UserAccount> userAccounts) {
        this.userAccounts = userAccounts;
    }
}
