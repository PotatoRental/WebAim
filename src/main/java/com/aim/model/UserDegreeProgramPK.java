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
public class UserDegreeProgramPK implements Serializable {
    private String username;
    private String degreeProgramId;

    @Id
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Id@Column(name = "degreeProgramId")
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

        UserDegreeProgramPK that = (UserDegreeProgramPK) o;

        if (degreeProgramId != null ? !degreeProgramId.equals(that.degreeProgramId) : that.degreeProgramId != null)
            return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (degreeProgramId != null ? degreeProgramId.hashCode() : 0);
        return result;
}}
