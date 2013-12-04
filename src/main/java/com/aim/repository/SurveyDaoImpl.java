package com.aim.repository;

import com.aim.dao.SurveyDao;
import com.aim.model.Survey;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Monika Tuchowska
 * Date: 12/3/13
 * Time: 9:46 AM
 */

@Repository
@Transactional
public class SurveyDaoImpl implements SurveyDao {

    private static final Logger logger = Logger.getLogger(CourseDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Survey> getAllSurveys() {
        logger.info("User is getting all surveys.");

        return sessionFactory.getCurrentSession()
                .createQuery("from Survey")
                .list();
    }

    @Override
    public Survey getSurveyById(String surveyId) {
        return (Survey) sessionFactory.getCurrentSession()
                .createQuery("from Survey where id = :surveyId")
                .setString("surveyId", surveyId)
                .uniqueResult();
    }
}
