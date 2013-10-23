package com.aim.repository;

import com.aim.dao.EvaluatorDao;
import com.aim.model.DegreeProgram;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:17 AM
 */
@Repository
public class EvaluatorDaoImpl extends UserDaoImpl implements EvaluatorDao {

    private static final Logger logger = Logger.getLogger(EvaluatorDaoImpl.class);

    @Override
    public String getSurveyResult() {
        logger.info("Evaluator is getting survey results.");
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public String getSurveyResultBy(DegreeProgram degreeProgram) {
        logger.info("Evaluator is getting survey results by a degree program.");
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
