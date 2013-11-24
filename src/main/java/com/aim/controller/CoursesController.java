package com.aim.controller;

import com.aim.model.Course;
import com.aim.service.CourseServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
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

    @Autowired
    private AimServiceImpl aimService;

    @RequestMapping(method = RequestMethod.GET)
    public String getCourses(ModelMap modelMap) {
        logger.info("User tries to get courses.");

        List<Course> courseList = aimService.getAllCourses();
        List<UserAccount> userList = new ArrayList<UserAccount>();
        for (Course course : courseList)
            userList.add(course.getCourseCoordinator());
        modelMap.addAttribute("userlist", userList);
        modelMap.addAttribute("courselist", courseList);

        return "courses/allcourses";
    }

    @RequestMapping(value = "{courseId}", method = RequestMethod.GET)
    public String getCourse(@PathVariable String courseId, ModelMap modelMap) {
        logger.info("User tries to view course: " + courseId);

        Course course = aimService.getCourseById(courseId);

        modelMap.addAttribute("course", course);
        return "courses/course-detail";
    }

    @RequestMapping(value = "{courseId}/edit", method = RequestMethod.GET)
    public String getCourseEditor(@PathVariable String courseId, ModelMap modelMap) {
        logger.info("User tries to edit course.");

        Course course = aimService.getCourseById(courseId);

        modelMap.addAttribute("course", course);
        return "courses/course-detail-edit";
    }

    @RequestMapping(value = "add-course", method = RequestMethod.GET)
    public String getCourseAdder(ModelMap modelMap) {
        logger.info("User tries to add course.");
        return "/courses/course-detail-add";
    }


    @RequestMapping(value = "offerings", method = RequestMethod.GET)
    public String getOfferings(ModelMap modelMap) {
        logger.info("User tries to get course offering information.");
        return "courses/offerings";
    }

    @RequestMapping(value = "view-offering", method = RequestMethod.GET)
    public String getOffering(ModelMap modelMap) {
        logger.info("User tries to view a course offering.");
        return "/courses/view-offering";
    }

    @RequestMapping(value = "edit-offering", method = RequestMethod.GET)
    public String getOfferingEditor(ModelMap modelMap) {
        logger.info("User tries to edit course offering information.");
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
}
