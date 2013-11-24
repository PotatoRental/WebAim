package com.aim.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 8:34 PM
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.IdClass(com.aim.model.CourseDegreeProgramPK.class)
@javax.persistence.Table(name = "Course_DegreeProgram", schema = "", catalog = "potatoaim")
@Entity
public class CourseDegreeProgram {
    private String courseId;

    @javax.persistence.Column(name = "courseId")
    @Id
    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    private String degreeProgramId;

    @javax.persistence.Column(name = "degreeProgramId")
    @Id
    public String getDegreeProgramId() {
        return degreeProgramId;
    }

    public void setDegreeProgramId(String degreeProgramId) {
        this.degreeProgramId = degreeProgramId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CourseDegreeProgram that = (CourseDegreeProgram) o;

        if (courseId != null ? !courseId.equals(that.courseId) : that.courseId != null) return false;
        if (degreeProgramId != null ? !degreeProgramId.equals(that.degreeProgramId) : that.degreeProgramId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = courseId != null ? courseId.hashCode() : 0;
        result = 31 * result + (degreeProgramId != null ? degreeProgramId.hashCode() : 0);
        return result;
    }
}
