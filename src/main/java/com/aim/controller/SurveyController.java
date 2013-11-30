package com.aim.controller;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 11/19/13
 * Time: 9:30 PM
 * To change this template use File | Settings | File Templates.
 */

import org.apache.log4j.Logger;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/surveys")
@PreAuthorize("isAuthenticated()")
public class SurveyController {

    private static final Logger logger = Logger.getLogger(SurveyController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String getMinutes(ModelMap modelMap) {
        logger.info("User tries to get surveys.");
        return "surveys/allsurveys";
    }

}
