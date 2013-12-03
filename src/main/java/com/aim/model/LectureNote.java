package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yun
 * Date: 12/2/13
 * Time: 12:54 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table
public class LectureNote {
    @Id
    @Column
    private Integer id;

    @Column
    private String name;

    @Column
    private String filePath;

    @ManyToOne
    @JoinColumn(name = "CourseOfferingId", referencedColumnName = "id")
    private CourseOffering courseOffering;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public CourseOffering getCourseOffering() {
        return courseOffering;
    }

    public void setCourseOffering(CourseOffering courseOffering) {
        this.courseOffering = courseOffering;
    }
}
