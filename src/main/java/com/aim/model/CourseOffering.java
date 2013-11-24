package com.aim.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 11/12/13
 * Time: 12:39 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "CourseOffering")
public class CourseOffering {
    @Id
    @Column
    private Integer id;

    @Column
    private String courseId;

    @Column
    private Integer Section;

    @Column
    private String semester;

    //TODO: this maps to user account
    @Column
    private String instructorUsername;

    @Column
    private String syllabusPath;

    @Column
    private String schedulePath;

    @Column
    private String lectureNotesPath;

    @Column
    private String eosReportPath;

    @Column
    private String ccReportPath;

    @Column
    private String cicReportPath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public Integer getSection() {
        return Section;
    }

    public void setSection(Integer section) {
        Section = section;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getInstructorUsername() {
        return instructorUsername;
    }

    public void setInstructorUsername(String instructorUsername) {
        this.instructorUsername = instructorUsername;
    }

    public String getSyllabusPath() {
        return syllabusPath;
    }

    public void setSyllabusPath(String syllabusPath) {
        this.syllabusPath = syllabusPath;
    }

    public String getSchedulePath() {
        return schedulePath;
    }

    public void setSchedulePath(String schedulePath) {
        this.schedulePath = schedulePath;
    }

    public String getLectureNotesPath() {
        return lectureNotesPath;
    }

    public void setLectureNotesPath(String lectureNotesPath) {
        this.lectureNotesPath = lectureNotesPath;
    }

    public String getEosReportPath() {
        return eosReportPath;
    }

    public void setEosReportPath(String eosReportPath) {
        this.eosReportPath = eosReportPath;
    }

    public String getCcReportPath() {
        return ccReportPath;
    }

    public void setCcReportPath(String ccReportPath) {
        this.ccReportPath = ccReportPath;
    }

    public String getCicReportPath() {
        return cicReportPath;
    }

    public void setCicReportPath(String cicReportPath) {
        this.cicReportPath = cicReportPath;
    }
}
