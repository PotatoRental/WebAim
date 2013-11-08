package com.aim.controller;

import com.aim.model.Course;
import org.apache.log4j.Logger;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * User: Milky
 * Date: 10/18/13
 * Time: 3:30 AM
 */
@Controller
@RequestMapping(value = "/courses")
@PreAuthorize("isAuthenticated()")
public class CoursesController {

    private static final Logger logger = Logger.getLogger(CoursesController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String getCourses(ModelMap modelMap) {
//        List<Course> courseList = courseDao.getAllCourses();
//        modelMap.addAttribute("courselist", courseList);
        logger.info("User tries to get courses.");
        return "courses/allcourses";
    }

    @RequestMapping(value = "course-offerings", method = RequestMethod.GET)
    public String getOfferings(ModelMap modelMap) {
        logger.info("User tries to get course offering information.");
        return "courses/offerings";
    }

    @RequestMapping(value = "view-offering", method = RequestMethod.GET)
    public String getOffering(ModelMap modelMap) {
        //logger.info("User tries to get course offering information.");
        return "/courses/view-offering";
    }

    @RequestMapping(value = "edit-offering", method = RequestMethod.GET)
    public String getOfferingEditor(ModelMap modelMap) {
        //logger.info("User tries to get course offering information.");
        return "/courses/edit-offering";
    }

    @RequestMapping(value = "missing-course-info", method = RequestMethod.GET)
    public String getMissingInfo(ModelMap modelMap) {
        logger.info("User tries to get missing course information.");
        return "courses/missing-course-info";
    }

    @RequestMapping(value = "cc-reports", method = RequestMethod.GET)
    public String getCourseCoordinatorReports(ModelMap modelMap) {
        logger.info("User tries to get course coordinator reports.");
        return "courses/cc-reports";
    }

    @RequestMapping(value = "cse102", method = RequestMethod.GET)
    public String getCourse(ModelMap modelMap) {
        //logger.info("User tries to get course offering information.");
        return "courses/cse102";
    }

    @RequestMapping(value = "cse102-edit", method = RequestMethod.GET)
    public String getCourseEditor(ModelMap modelMap) {
        //logger.info("User tries to get course offering information.");
        return "courses/cse102-edit";
    }

}
