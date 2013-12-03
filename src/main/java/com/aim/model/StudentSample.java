package com.aim.model;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Qiang He
 * Date: 10/23/13
 * Time: 5:30 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "StudentSample")
public class StudentSample {
    @Id
    @Column (nullable = false)
    private String id;

    @Column
    private String quality;

    @Column
    private String content;

    @ManyToOne
    @JoinColumn(name = "assignmentId", referencedColumnName = "id")
    private Assignment assignment;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Assignment getAssignment() {
        return assignment;
    }

    public void setAssignment(Assignment assignment) {
        this.assignment = assignment;
    }
}
