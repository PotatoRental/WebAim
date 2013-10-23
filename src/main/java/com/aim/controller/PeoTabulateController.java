package com.aim.controller;

import org.apache.log4j.Logger;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/18/13
 * Time: 1:26 PM
 */
@Controller
@RequestMapping("/peo")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class PeoTabulateController {

    private static final Logger logger = Logger.getLogger(PeoTabulateController.class);

    @RequestMapping(value = "tabulate-attainment", method = RequestMethod.GET)
    public String getAllPeos(Principal principal, ModelMap modelMap) {
        logger.info("User tries to get all peos' information.");
        return "peo/tabulate-attainment";
    }
}
