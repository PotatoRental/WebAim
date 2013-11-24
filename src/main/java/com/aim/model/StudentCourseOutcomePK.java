package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 8:34 PM
 * To change this template use File | Settings | File Templates.
 */
public class StudentCourseOutcomePK implements Serializable {
    private String studentOutcomeId;
    private int courseOutcomeId;

@Id@Column(name = "studentOutcomeId")
public String getStudentOutcomeId() {
    return studentOutcomeId;
}

    public void setStudentOutcomeId(String studentOutcomeId) {
        this.studentOutcomeId = studentOutcomeId;
    }

    @Id@Column(name = "courseOutcomeId")
    public int getCourseOutcomeId() {
        return courseOutcomeId;
    }

    public void setCourseOutcomeId(int courseOutcomeId) {
        this.courseOutcomeId = courseOutcomeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentCourseOutcomePK that = (StudentCourseOutcomePK) o;

        if (courseOutcomeId != that.courseOutcomeId) return false;
        if (studentOutcomeId != null ? !studentOutcomeId.equals(that.studentOutcomeId) : that.studentOutcomeId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = studentOutcomeId != null ? studentOutcomeId.hashCode() : 0;
        result = 31 * result + courseOutcomeId;
        return result;
}}
