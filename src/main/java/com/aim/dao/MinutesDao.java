package com.aim.dao;

import com.aim.model.Minutes;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Monika Tuchowska
 * Date: 12/3/13
 * Time: 9:30 AM
 */
public interface MinutesDao {

    public List<Minutes> getAllMinutes();
    public Minutes getMinutesById(String id);

    public void modifyMinutes(Minutes minutes);
    public void deleteMinutesById(String id);

    public void addMinutes(Minutes minutes);
}
