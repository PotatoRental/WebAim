package com.aim.controller;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 11/19/13
 * Time: 9:30 PM
 * To change this template use File | Settings | File Templates.
 */

import com.aim.model.Survey;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/surveys")
@PreAuthorize("isAuthenticated()")
public class SurveyController {

    @Autowired
    private AimService aimService;

    private static final Logger logger = Logger.getLogger(SurveyController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String getSurveys(ModelMap modelMap) {
        logger.info("User tries to get surveys.");

        List<Survey> surveys = aimService.getAllSurveys();
        modelMap.addAttribute("surveys",surveys);

        return "/surveys/allsurveys";
    }

    @RequestMapping(value="edit-survey", method = RequestMethod.GET)
    public String getSurveyEditor (ModelMap modelMap) {
        logger.info("User tries to edit survey");
        return "/surveys/edit-survey";
    }

}
