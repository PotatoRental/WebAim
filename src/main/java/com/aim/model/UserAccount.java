package com.aim.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.List;
import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * User: Jason, Yun
 * Date: 10/22/13
 * Time: 10:00 PM
 */
@Entity
@Table(name = "UserAccount")
@Inheritance(strategy = InheritanceType.JOINED)
public class UserAccount implements UserDetails {
    @Id
    @Column
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String firstName;

    @Column(nullable = false)
    private String lastName;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<Role> roles;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @LazyCollection(value = LazyCollectionOption.FALSE)
    private List<DegreeProgram> degreeprograms;

    public UserAccount() {}

    public UserAccount(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstname) {
        this.firstName = firstname;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastname) {
        this.lastName = lastname;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles;
    }

    public String getPassword() {
        if (password != null){
        int offset = password.charAt(password.length()-1)-97;
        byte[] bytes = password.substring(0, password.length()-1).getBytes();
        for(int i = 0; i < bytes.length; i++)
            bytes[i] = (byte)(bytes[i]+offset);
        return new String(bytes);
        }
        return password;
    }

    public void setPassword(String password) {
        byte[] bytes = password.getBytes();
        int offset = new Random().nextInt(10)+1;
        for(int i = 0; i < bytes.length; i++)
            bytes[i] = (byte)(bytes[i]-offset);
        this.password = new String(bytes) + (char)(offset+97);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public List<DegreeProgram> getDegreeprograms() {
        return degreeprograms;
    }

    public void setDegreeprograms(List<DegreeProgram> degreeprograms) {
        this.degreeprograms = degreeprograms;
    }
/*
    public static void main(String[] args)
    {
        UserAccount user = new UserAccount();
        user.setPassword("password");
        System.out.println(user.password);
        System.out.println(user.getPassword());
    }*/
}