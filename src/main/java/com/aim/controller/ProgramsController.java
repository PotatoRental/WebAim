package com.aim.controller;

import com.aim.model.DegreeProgram;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 11/24/13
 * Time: 1:03 AM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/programs")
@PreAuthorize("isAuthenticated()")
public class ProgramsController {
    private static final Logger logger = Logger.getLogger(ProgramsController.class);

    @Autowired
    private AimService aimService;


    @RequestMapping(method = RequestMethod.GET)
    public String getMinutes(ModelMap modelMap) {
        logger.info("User tries to get degree programs.");

        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        modelMap.addAttribute("degreeprograms",degreePrograms);

        return "/programs/programs";
    }

    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public String getProgramEditor(ModelMap modelMap) {
        return "/programs/edit-program";
    }


}
