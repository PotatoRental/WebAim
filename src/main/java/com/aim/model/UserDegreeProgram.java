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
@javax.persistence.IdClass(com.aim.model.UserDegreeProgramPK.class)
@javax.persistence.Table(name = "User_DegreeProgram", schema = "", catalog = "potatoaim")
@Entity
public class UserDegreeProgram {
    private String username;

    @javax.persistence.Column(name = "username")
    @Id
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

        UserDegreeProgram that = (UserDegreeProgram) o;

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
    }
}
