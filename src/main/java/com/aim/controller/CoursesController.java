package com.aim.controller;

import com.aim.model.Course;
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

    @RequestMapping(method = RequestMethod.GET)
    public String getCourses(ModelMap modelMap) {
//        List<Course> courseList = courseDao.getAllCourses();
//        modelMap.addAttribute("courselist", courseList);

        return "courses/allcourses";
    }

    @RequestMapping(value = "course-offerings", method = RequestMethod.GET)
    public String getOfferings(ModelMap modelMap) {
        return "courses/course-offerings";
    }

    @RequestMapping(value = "missing-course-info", method = RequestMethod.GET)
    public String getMissingInfo(ModelMap modelMap) {
        return "courses/missing-course-info";
    }
}
