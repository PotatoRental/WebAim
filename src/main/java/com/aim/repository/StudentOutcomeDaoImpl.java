package com.aim.repository;

import com.aim.dao.StudentOutcomeDao;
import com.aim.model.StudentOutcome;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 12/3/13
 * Time: 1:13 AM
 * To change this template use File | Settings | File Templates.
 */

@Repository
@Transactional
public class StudentOutcomeDaoImpl implements StudentOutcomeDao {

    private static final Logger logger = Logger.getLogger(UserDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    public List<StudentOutcome> getAllStudentOutcomes() {
        logger.info("User is getting all outcomes.");

        return sessionFactory.getCurrentSession()
                .createQuery("from StudentOutcome")
                .list();
    }

    @Override
    public StudentOutcome getStudentOutcomeById(String outcomeId) {
        return (StudentOutcome)sessionFactory.getCurrentSession()
                .createQuery("from StudentOutcome where id = :outcomeId")
                .setString("outcomeId",outcomeId)
                .uniqueResult();
    }
}
