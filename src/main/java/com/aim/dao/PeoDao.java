package com.aim.dao;

import com.aim.model.Peo;
import com.aim.model.StudentOutcome;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Monika Tuchowska
 * Date: 12/3/13
 * Time: 11:50 AM
 */
public interface PeoDao {

    public List<Peo> getAllPeos();
    public List<Peo> getPeosByDegreeProgramId(String programId);

    public Peo getPeoById(String peoId);

    public void modifyPeo(StudentOutcome outcome);

    public void addPeo(StudentOutcome outcome);
}
