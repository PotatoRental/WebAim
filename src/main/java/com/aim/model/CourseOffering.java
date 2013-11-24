package com.aim.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 11/23/13
 * Time: 8:34 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
public class CourseOffering {
    private int id;

    @javax.persistence.Column(name = "id")
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String courseId;

    @javax.persistence.Column(name = "courseId")
    @Basic
    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    private Integer section;

    @javax.persistence.Column(name = "section")
    @Basic
    public Integer getSection() {
        return section;
    }

    public void setSection(Integer section) {
        this.section = section;
    }

    private String semester;

    @javax.persistence.Column(name = "semester")
    @Basic
    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    private String syllabusPath;

    @javax.persistence.Column(name = "syllabusPath")
    @Basic
    public String getSyllabusPath() {
        return syllabusPath;
    }

    public void setSyllabusPath(String syllabusPath) {
        this.syllabusPath = syllabusPath;
    }

    private String schedulePath;

    @javax.persistence.Column(name = "schedulePath")
    @Basic
    public String getSchedulePath() {
        return schedulePath;
    }

    public void setSchedulePath(String schedulePath) {
        this.schedulePath = schedulePath;
    }

    private String lectureNotesPath;

    @javax.persistence.Column(name = "lectureNotesPath")
    @Basic
    public String getLectureNotesPath() {
        return lectureNotesPath;
    }

    public void setLectureNotesPath(String lectureNotesPath) {
        this.lectureNotesPath = lectureNotesPath;
    }

    private String eosReportPath;

    @javax.persistence.Column(name = "eosReportPath")
    @Basic
    public String getEosReportPath() {
        return eosReportPath;
    }

    public void setEosReportPath(String eosReportPath) {
        this.eosReportPath = eosReportPath;
    }

    private String ccReportPath;

    @javax.persistence.Column(name = "ccReportPath")
    @Basic
    public String getCcReportPath() {
        return ccReportPath;
    }

    public void setCcReportPath(String ccReportPath) {
        this.ccReportPath = ccReportPath;
    }

    private String cicReportPath;

    @javax.persistence.Column(name = "cicReportPath")
    @Basic
    public String getCicReportPath() {
        return cicReportPath;
    }

    public void setCicReportPath(String cicReportPath) {
        this.cicReportPath = cicReportPath;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CourseOffering that = (CourseOffering) o;

        if (id != that.id) return false;
        if (ccReportPath != null ? !ccReportPath.equals(that.ccReportPath) : that.ccReportPath != null) return false;
        if (cicReportPath != null ? !cicReportPath.equals(that.cicReportPath) : that.cicReportPath != null)
            return false;
        if (courseId != null ? !courseId.equals(that.courseId) : that.courseId != null) return false;
        if (eosReportPath != null ? !eosReportPath.equals(that.eosReportPath) : that.eosReportPath != null)
            return false;
        if (lectureNotesPath != null ? !lectureNotesPath.equals(that.lectureNotesPath) : that.lectureNotesPath != null)
            return false;
        if (schedulePath != null ? !schedulePath.equals(that.schedulePath) : that.schedulePath != null) return false;
        if (section != null ? !section.equals(that.section) : that.section != null) return false;
        if (semester != null ? !semester.equals(that.semester) : that.semester != null) return false;
        if (syllabusPath != null ? !syllabusPath.equals(that.syllabusPath) : that.syllabusPath != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (courseId != null ? courseId.hashCode() : 0);
        result = 31 * result + (section != null ? section.hashCode() : 0);
        result = 31 * result + (semester != null ? semester.hashCode() : 0);
        result = 31 * result + (syllabusPath != null ? syllabusPath.hashCode() : 0);
        result = 31 * result + (schedulePath != null ? schedulePath.hashCode() : 0);
        result = 31 * result + (lectureNotesPath != null ? lectureNotesPath.hashCode() : 0);
        result = 31 * result + (eosReportPath != null ? eosReportPath.hashCode() : 0);
        result = 31 * result + (ccReportPath != null ? ccReportPath.hashCode() : 0);
        result = 31 * result + (cicReportPath != null ? cicReportPath.hashCode() : 0);
        return result;
    }
}
