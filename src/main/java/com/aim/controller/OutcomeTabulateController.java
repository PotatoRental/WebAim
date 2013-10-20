package com.aim.controller;

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
@RequestMapping("/student-outcomes")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class OutcomeTabulateController {

    @RequestMapping(method = RequestMethod.GET)
    public String getAllUsers(ModelMap modelMap) {
        return "student-outcomes/tabulate-outcomes";
    }
}
