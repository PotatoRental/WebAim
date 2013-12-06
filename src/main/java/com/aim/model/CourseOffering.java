package com.aim.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 11/12/13
 * Time: 12:39 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "CourseOffering")
public class CourseOffering implements Comparable<CourseOffering> {
    @Id
    @Column
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "courseId", referencedColumnName = "id")
    private Course course;

    @Column
    private Integer Section;

    @Column
    private String semester;

    @ManyToOne
    @JoinColumn(name = "instructorUsername", referencedColumnName = "username")
    private UserAccount instructor;

    @Column
    private String syllabusPath;

    @Column
    private String schedulePath;

    @Column
    private String eosReportPath;

    @Column
    private String ccReportPath;

    @Column
    private String cicReportPath;

    @OneToMany(mappedBy = "courseOffering")
    private List<CourseOfferingDirectAssessment> courseOfferingDirectAssessments;

    @OneToMany(mappedBy = "courseOffering")
    private List<CourseOfferingOutcomeInformation> courseOfferingOutcomeInformations;

    @OneToMany(mappedBy = "courseOffering")
    private List<LectureNote> lectureNotes;

    @OneToMany(mappedBy = "courseOffering")
    private List<Assignment> assignments;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<CourseOfferingDirectAssessment> getCourseOfferingDirectAssessments() {
        return courseOfferingDirectAssessments;
    }

    public void setCourseOfferingDirectAssessments(List<CourseOfferingDirectAssessment> courseOfferingDirectAssessments) {
        this.courseOfferingDirectAssessments = courseOfferingDirectAssessments;
    }

    public List<CourseOfferingOutcomeInformation> getCourseOfferingOutcomeInformations() {
        return courseOfferingOutcomeInformations;
    }

    public void setCourseOfferingOutcomeInformations(List<CourseOfferingOutcomeInformation> courseOfferingOutcomeInformations) {
        this.courseOfferingOutcomeInformations = courseOfferingOutcomeInformations;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
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

    public UserAccount getInstructor() {
        return instructor;
    }

    public void setInstructorUsername(UserAccount instructor) {
        this.instructor = instructor;
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

    public void setInstructor(UserAccount instructor) {
        this.instructor = instructor;
    }

    public List<LectureNote> getLectureNotes() {
        return lectureNotes;
    }

    public void setLectureNotes(List<LectureNote> lectureNotes) {
        this.lectureNotes = lectureNotes;
    }

    public List<Assignment> getAssignments() {
        return assignments;
    }

    public void setAssignments(List<Assignment> assignments) {
        this.assignments = assignments;
    }

    @Override
    public int compareTo(CourseOffering o) {
        return course.getId().compareTo(o.getCourse().getId());
    }
}
