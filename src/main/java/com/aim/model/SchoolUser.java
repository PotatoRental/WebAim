package com.aim.model;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yun + Jason
 * Date: 10/22/13
 * Time: 11:15 PM
 */
public class SchoolUser extends UserAccount {

    @ManyToMany
    @JoinTable(name = "USER_DP",
            joinColumns = @JoinColumn(name = "USERNAME", referencedColumnName = "username"),
            inverseJoinColumns = @JoinColumn(name = "DP_ID", referencedColumnName = "id"))
    private List<DegreeProgram> degreeprograms;

    public List<DegreeProgram> getDegreeprograms() {
        return degreeprograms;
    }

    public void setDegreeprograms(List<DegreeProgram> degreeprograms) {
        this.degreeprograms = degreeprograms;
    }
}
