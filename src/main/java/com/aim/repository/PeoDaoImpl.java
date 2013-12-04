package com.aim.repository;

import com.aim.dao.PeoDao;
import com.aim.model.Peo;
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
 * Time: 11:51 AM
 */

@Repository
@Transactional
public class PeoDaoImpl implements PeoDao {
    private static final Logger logger = Logger.getLogger(CourseDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Peo> getAllPeos() {
        logger.info("User is getting all PEOs.");

        return sessionFactory.getCurrentSession()
                .createQuery("from Peo")
                .list();
    }

    public List<Peo> getPeosByDegreeProgramId(String programId) {
        logger.info("User is getting PEOs for program:"+programId);

        return sessionFactory.getCurrentSession()
                .createQuery("from Peo where degreeprogram = :programId")
                .setString("programId",programId)
                .list();
    }

    @Override
    public Peo getPeoById(String peoId) {
        return (Peo)sessionFactory.getCurrentSession()
                .createQuery("from Peo where id = :peoId")
                .setString("peoId",peoId)
                .uniqueResult();
    }


}
