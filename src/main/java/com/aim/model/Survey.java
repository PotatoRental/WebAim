package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 11/12/13
 * Time: 12:33 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "Survey")
public class Survey {
    @Id
    @Column
    private Integer id;

    @Column
    private String groups;

    @Column
    private String initiator;

    @Column
    private String semester;

    @Column
    private String result;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    public String getInitiator() {
        return initiator;
    }

    public void setInitiator(String initiator) {
        this.initiator = initiator;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
