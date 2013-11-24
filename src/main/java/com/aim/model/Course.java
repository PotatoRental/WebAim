package com.aim.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 9:21 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
public class Course {
    private String id;
    private String name;
    private UserAccount courseCoordinatorUsername;

    @javax.persistence.Column(name = "id")
    @Id
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @javax.persistence.Column(name = "name")
    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Course course = (Course) o;

        if (id != null ? !id.equals(course.id) : course.id != null) return false;
        if (name != null ? !name.equals(course.name) : course.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    @OneToOne
    @javax.persistence.JoinColumn(name = "courseCoordinatorUsername", referencedColumnName = "username")
    public UserAccount getCourseCoordinatorUsername() {
        return courseCoordinatorUsername;
    }

    public void setCourseCoordinatorUsername(UserAccount courseCoordinatorUsername) {
        this.courseCoordinatorUsername = courseCoordinatorUsername;
    }
}
