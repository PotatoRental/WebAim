package com.aim.controller;

import com.aim.model.Peo;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/18/13
 * Time: 1:26 PM
 */
@Controller
@RequestMapping("/peo")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class PeoController {

    private static final Logger logger = Logger.getLogger(PeoController.class);

    @Autowired
    private AimService aimService;


    @RequestMapping(value = "tabulate-attainment", method = RequestMethod.GET)
    public String getTabulatedPeos(Principal principal, ModelMap modelMap) {
        logger.info("User tries to tabulate PEO attainment.");
        return "peo/tabulate-attainment";
    }

    @RequestMapping(value = "manage-peos", method = RequestMethod.GET)
    public String getAllPeos(Principal principal, ModelMap modelMap) {
        logger.info("User tries to get all peos' information.");
        List<Peo> peos = aimService.getAllPeos();
        modelMap.addAttribute("peos",peos);
        return "peo/manage-peos";
    }
}
