package com.aim.controller;

import org.apache.log4j.Logger;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/18/13
 * Time: 1:26 PM
 */
@Controller
@RequestMapping("/outcome")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class OutcomeController {

    private static final Logger logger = Logger.getLogger(OutcomeController.class);

    @RequestMapping(value = "tabulate-outcomes", method = RequestMethod.GET)
    public String getTabulatedOutcomes(ModelMap modelMap) {
        logger.info("User tries to tabulate student outcomes");
        return "student-outcomes/tabulate-outcomes";
    }

    @RequestMapping(value = "manage-outcomes", method = RequestMethod.GET)
    public String getAllOutcomes(ModelMap modelMap) {
        logger.info("User tries to get all outcomes' information");
        return "student-outcomes/manage-outcomes";
    }

}
