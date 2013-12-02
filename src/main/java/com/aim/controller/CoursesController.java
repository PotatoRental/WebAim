package com.aim.controller;

import com.aim.model.Course;
import com.aim.model.CourseOutcome;
import com.aim.model.DegreeProgram;
import com.aim.model.UserAccount;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    private AimService aimService;

    @RequestMapping(method = RequestMethod.GET)
    public String getCourses(ModelMap modelMap) {
        logger.info("User tries to get courses.");

        List<Course> courseList = aimService.getAllCourses();
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
        List<UserAccount> allCourseCoordinator = aimService.getAllCourseCoordinator();

        modelMap.addAttribute("course", course);
        modelMap.addAttribute("ccaccount", new UserAccount());
        modelMap.addAttribute("allCourseCoordinator", allCourseCoordinator);
        return "courses/course-detail-edit";
    }

    @RequestMapping(value = "{courseId}/submit", method = RequestMethod.POST)
    public String submitCourseEditor(@PathVariable String courseId,
                                     @ModelAttribute("course") Course course,
                                     BindingResult courseResu) {
        logger.info("User tries to submit course.");

        String ccusername = (String) courseResu.getFieldError("courseCoordinator").getRejectedValue();
        String alterusername = (String) courseResu.getFieldError("alternateCourseCoordinator").getRejectedValue();
        course.setCourseCoordinator(aimService.getUserByUsername(ccusername));
        course.setAlternateCourseCoordinator(aimService.getUserByUsername(alterusername));

        aimService.saveCourse(course);

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
