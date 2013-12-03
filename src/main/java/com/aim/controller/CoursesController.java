package com.aim.controller;

import com.aim.model.Course;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collections;
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
        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();

        modelMap.addAttribute("course", course);
        modelMap.addAttribute("ccaccount", new UserAccount());
        modelMap.addAttribute("allCourseCoordinator", allCourseCoordinator);
        modelMap.addAttribute("degreePrograms", degreePrograms);
        return "courses/course-detail-edit";
    }

    @RequestMapping(value = "{courseId}/submit", method = RequestMethod.POST)
    public String submitCourseEditor(@PathVariable String courseId,
                                     @ModelAttribute("course") Course course,
                                     BindingResult courseResu,
                                     HttpServletRequest request,
                                     RedirectAttributes redirectAttributes) {
        logger.info("User tries to submit course.");

        String ccusername = (String) courseResu.getFieldError("courseCoordinator").getRejectedValue();
        String alterusername = (String) courseResu.getFieldError("alternateCourseCoordinator").getRejectedValue();
        String degreeprograms[] = request.getParameterValues("degrees");

        List<DegreeProgram> dPrograms = new ArrayList<DegreeProgram>();
        for (String degree : degreeprograms)
            dPrograms.add(aimService.getDegreeProgramById(degree));

        course.setCourseCoordinator(aimService.getUserByUsername(ccusername));
        course.setAlternateCourseCoordinator(aimService.getUserByUsername(alterusername));
        course.setDegreeprograms(dPrograms);

        aimService.saveCourse(course);

        redirectAttributes.addFlashAttribute("course-modified", "Course " + courseId + " has been modified");

        return "redirect:/courses";
    }

    @RequestMapping(value = "add-course", method = RequestMethod.GET)
    public String getCourseAdder(ModelMap modelMap) {
        logger.info("User tries to add course.");

        List<UserAccount> allCourseCoordinator = aimService.getAllCourseCoordinator();
        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        modelMap.addAttribute("allCourseCoordinator", allCourseCoordinator);
        modelMap.addAttribute("course", new Course());
        modelMap.addAttribute("degreePrograms", degreePrograms);

        return "courses/course-detail-add";
    }

    @RequestMapping(value = "add-course/submit", method = RequestMethod.POST)
    public String addCourse(@ModelAttribute("course") Course course,
                            HttpServletRequest request,
                            RedirectAttributes redirectAttributes) {

        Course exists = aimService.getCourseById(course.getId());
        if (exists != null) {
            redirectAttributes.addFlashAttribute("course-error", "Course ID already exits");
            return "redirect:/courses";
        }

        String ccusername = request.getParameter("courseCoordinator");
        String alterusername = request.getParameter("alterCourseCoordinator");
        String degreeprograms[] = request.getParameterValues("degrees");

        List<DegreeProgram> dPrograms = new ArrayList<DegreeProgram>();
        for (String degree : degreeprograms)
            dPrograms.add(aimService.getDegreeProgramById(degree));

        course.setCourseCoordinator(aimService.getUserByUsername(ccusername));
        course.setAlternateCourseCoordinator(aimService.getUserByUsername(alterusername));
        course.setDegreeprograms(dPrograms);

        redirectAttributes.addFlashAttribute("course-added", "Course " + course.getId() + " has been added");

        aimService.addCourse(course);
        return "redirect:/courses";
    }

    @RequestMapping(value = "offerings", method = RequestMethod.GET)
    public String getOfferings(ModelMap modelMap) {
        logger.info("User tries to get course offering information.");

        List<Course> courseList = aimService.getAllCourses();
        modelMap.addAttribute("courseList", courseList);

        return "courses/offerings";
    }

    @RequestMapping(value = "view-offering", method = RequestMethod.GET)
    public String getOffering(ModelMap modelMap) {
        logger.info("User tries to view a course offering.");
        return "courses/view-offering";
    }

    @RequestMapping(value = "edit-offering", method = RequestMethod.GET)
    public String getOfferingEditor(ModelMap modelMap) {
        logger.info("User tries to edit course offering information.");
        return "courses/edit-offering";
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
