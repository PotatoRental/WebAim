package com.aim.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 9:22 PM
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.IdClass(com.aim.model.StudentCourseOutcomePK.class)
@javax.persistence.Table(name = "Student_Course_Outcome", schema = "", catalog = "potatoaim")
@Entity
public class StudentCourseOutcome {
    private String studentOutcomeId;

    @javax.persistence.Column(name = "studentOutcomeId")
    @Id
    public String getStudentOutcomeId() {
        return studentOutcomeId;
    }

    public void setStudentOutcomeId(String studentOutcomeId) {
        this.studentOutcomeId = studentOutcomeId;
    }

    private int courseOutcomeId;

    @javax.persistence.Column(name = "courseOutcomeId")
    @Id
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

        StudentCourseOutcome that = (StudentCourseOutcome) o;

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
    }
}
