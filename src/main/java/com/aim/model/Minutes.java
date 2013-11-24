package com.aim.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 8:34 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
public class Minutes {
    private int id;

    @javax.persistence.Column(name = "id")
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private Date date;

    @javax.persistence.Column(name = "date")
    @Basic
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    private String groups;

    @javax.persistence.Column(name = "groups")
    @Basic
    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    private String minutes;

    @javax.persistence.Column(name = "minutes")
    @Basic
    public String getMinutes() {
        return minutes;
    }

    public void setMinutes(String minutes) {
        this.minutes = minutes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Minutes minutes1 = (Minutes) o;

        if (id != minutes1.id) return false;
        if (date != null ? !date.equals(minutes1.date) : minutes1.date != null) return false;
        if (groups != null ? !groups.equals(minutes1.groups) : minutes1.groups != null) return false;
        if (minutes != null ? !minutes.equals(minutes1.minutes) : minutes1.minutes != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (groups != null ? groups.hashCode() : 0);
        result = 31 * result + (minutes != null ? minutes.hashCode() : 0);
        return result;
    }
}
