package com.aim.model;

import javax.persistence.*;

/**
 * User: Milky
 * Date: 11/24/13
 * Time: 2:11 PM
 */
@Entity
@Table(name = "Role")
public class Role {

    public static final Role ROLE_INSTR = new Role("ROLE_INSTR");
    public static final Role ROLE_CC = new Role("ROLE_CC");
    public static final Role ROLE_ADMIN = new Role("ROLE_ADMIN");
    public static final Role ROLE_CIC = new Role("ROLE_CIC");

    @Id
    private String role;

    public Role() {}

    public Role(String role) {
        this.role = role;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Role)) return false;

        Role role1 = (Role) o;

        if (role != null ? !role.equals(role1.role) : role1.role != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return role != null ? role.hashCode() : 0;
    }
}
