package com.aim.repository;

import com.aim.dao.EvaluatorDao;
import com.aim.model.DegreeProgram;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/23/13
 * Time: 12:17 AM
 */
@Repository
public class EvaluatorDaoImpl extends UserDaoImpl implements EvaluatorDao {

    @Override
    public String getSurveyResult() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public String getSurveyResultBy(DegreeProgram degreeProgram) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
