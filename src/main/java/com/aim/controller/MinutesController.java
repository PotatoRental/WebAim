package com.aim.controller;

import com.aim.model.Minutes;
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
@RequestMapping(value = "/minutes")
@PreAuthorize("isAuthenticated()")
public class MinutesController {
    private static final Logger logger = Logger.getLogger(MinutesController.class);

    @Autowired
    private AimService aimService;

    @RequestMapping(method = RequestMethod.GET)
    public String getMinutes(ModelMap modelMap) {
        logger.info("User tries to get minutes.");

        List<Minutes> minutes =  aimService.getAllMinutes();
        modelMap.addAttribute("minutes",minutes);


        return "/minutes/allminutes";
    }

    @RequestMapping(value="edit-minutes", method = RequestMethod.GET)
    public String getMinutesEditor (ModelMap modelMap) {
        logger.info("User tries to edit minutes.");
        return "/minutes/edit-minutes";
    }


}
