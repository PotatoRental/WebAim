package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
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
    private String minutes;

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

    public String getMinutes() {
        return minutes;
    }

    public void setMinutes(String minutes) {
        this.minutes = minutes;
    }
}
