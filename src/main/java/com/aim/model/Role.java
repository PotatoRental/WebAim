package com.aim.model;

import javax.persistence.*;

/**
 * User: Milky
 * Date: 11/24/13
 * Time: 2:11 PM
 */
@Entity
@Table("Role")
public class Role {

    @Column(name = "role")
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
