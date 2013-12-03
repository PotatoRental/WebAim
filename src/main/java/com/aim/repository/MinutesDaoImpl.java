package com.aim.repository;


import com.aim.model.Minutes;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User: Milky
 * Date: 11/11/13
 * Time: 2:23 AM
 */
@Repository
@Transactional
public class MinutesDaoImpl{

    private static final Logger logger = Logger.getLogger(CourseDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;


    public List<Minutes> getAllMinutes() {
        logger.info("User is getting all minutes.");

        return sessionFactory.getCurrentSession()
                .createQuery("from Minutes")
                .list();
    }


}
