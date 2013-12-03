package com.aim.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 11/12/13
 * Time: 12:36 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Minutes")
public class Minutes {
    @Id
    @Column
    private Integer id;

    @Column
    private Date date;

    @Column
    private String groups;

    @Column
    private String filePath;

    @ManyToOne(cascade = CascadeType.PERSIST)
    private DegreeProgram degreeProgram;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String group) {
        this.groups = group;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String minutes) {
        this.filePath = minutes;
    }

    public DegreeProgram getDegreeProgram() {
        return degreeProgram;
    }

    public void setDegreeProgram(DegreeProgram program) {
        this.degreeProgram = program;
    }
}
