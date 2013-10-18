package com.aim.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * User: Milky
 * Date: 10/18/13
 * Time: 3:30 AM
 */
@Controller
@RequestMapping(value = "/courses")
public class CoursesController {

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(method = RequestMethod.GET)
    public String getCourses(ModelMap modelMap) {
        return "courses/allcourses";
    }
}
