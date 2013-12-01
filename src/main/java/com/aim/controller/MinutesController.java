package com.aim.controller;

import org.apache.log4j.Logger;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/minutes")
@PreAuthorize("isAuthenticated()")
public class MinutesController {
    private static final Logger logger = Logger.getLogger(MinutesController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String getMinutes(ModelMap modelMap) {
        logger.info("User tries to get minutes.");
        return "/minutes/allminutes";
    }


}
