package com.aim.tests;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.sql.DataSource;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/26/13
 * Time: 2:26 AM
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("classpath:/spring/web-aim-servlet.xml")
@ActiveProfiles("dev")
public class DevTests {

    @Autowired
    private DataSource dataSource;

    @Test
    public void dataConnect() throws Exception {
        assert(dataSource.getConnection().isValid(5000));
    }

}
