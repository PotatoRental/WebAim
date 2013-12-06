package com.aim.controller;

import com.aim.model.Course;
import com.aim.model.CourseOffering;
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
import java.util.*;

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

        String ccusername = request.getParameter("courseCoordinator");
        String alterusername = request.getParameter("alternateCourseCoordinator");
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
                            BindingResult courseResu,
                            HttpServletRequest request,
                            RedirectAttributes redirectAttributes) {

        Course exist = aimService.getCourseById(course.getId());
        if (exist != null) {
            redirectAttributes.addFlashAttribute("course-error", "Could not add course because it exists already");
            return "redirect:/courses";
        }

        String ccusername = request.getParameter("courseCoordinator");
        String alterusername = request.getParameter("alternateCourseCoordinator");
        String degreeprograms[] = request.getParameterValues("degrees");

        List<DegreeProgram> dPrograms = new ArrayList<DegreeProgram>();
        for (String degree : degreeprograms)
            dPrograms.add(aimService.getDegreeProgramById(degree));

        course.setCourseCoordinator(aimService.getUserByUsername(ccusername));
        course.setAlternateCourseCoordinator(aimService.getUserByUsername(alterusername));
        course.setDegreeprograms(dPrograms);

        redirectAttributes.addFlashAttribute("course-modified", "Course " + course.getId() + " has been added");

        aimService.addCourse(course);
        return "redirect:/courses";
    }

    @RequestMapping(value = "offerings", method = RequestMethod.GET)
    public String getOfferings(ModelMap modelMap) {
        logger.info("User tries to get course offering information.");

        List<Course> courseList = aimService.getAllCourses();
        List<CourseOffering> courseOfferingList = aimService.getAllCourseOfferings();
        TreeMap<Course, List<CourseOffering>> courseAndOffering = new TreeMap<Course, List<CourseOffering>>();

        for (Course course : courseList) {
            List<CourseOffering> list = new ArrayList<CourseOffering>();
            for(CourseOffering courseOffering : courseOfferingList) {
                if (course.getId().equals(courseOffering.getCourse().getId())) {
                    list.add(courseOffering);
                }
            }
            if (!list.isEmpty())
                courseAndOffering.put(course, list);
        }

        modelMap.addAttribute("courseAndOffering", courseAndOffering);

        return "courses/offerings";
    }

    @RequestMapping(value = "offerings/{offeringId}", method = RequestMethod.GET)
    public String getOffering(@PathVariable Integer offeringId, ModelMap modelMap) {
        logger.info("User tries to view a course offering.");

        CourseOffering courseOffering = aimService.getCourseOfferingById(offeringId);
        Course course = courseOffering.getCourse();
        modelMap.addAttribute("offering", courseOffering);
        modelMap.addAttribute("course", course);

        return "courses/view-offering";
    }

    @RequestMapping(value = "offerings/{offeringId}/edit-offering", method = RequestMethod.GET)
    public String getOfferingEditor(@PathVariable String offeringId, ModelMap modelMap) {
        logger.info("User tries to edit course offering information.");


        CourseOffering courseOffering = aimService.getCourseOfferingById(Integer.parseInt(offeringId));
        List<Course> courses = aimService.getAllCourses();
        List<UserAccount> instructors = aimService.getAllInstructor();

        modelMap.addAttribute("offering", courseOffering);
        modelMap.addAttribute("courses",courses);
        modelMap.addAttribute("instructors", instructors);

        return "courses/edit-offering";
    }

    @RequestMapping(value = "offerings/add-offering", method = RequestMethod.GET)
    public String getOfferingAdderr(ModelMap modelMap) {
        logger.info("User tries to edit course offering information.");

        List<Course> courses = aimService.getAllCourses();
        List<UserAccount> instructors = aimService.getAllInstructor();

        modelMap.addAttribute("courses",courses);
        modelMap.addAttribute("instructors", instructors);

        return "courses/add-offering";
    }

    @RequestMapping(value = "missing-course-info", method = RequestMethod.GET)
    public String getMissingInfo(ModelMap modelMap) {
        logger.info("User tries to get missing course information.");



        return "courses/missing-course-info";
    }

    @RequestMapping(value = "offering-table/{role}", method = RequestMethod.GET)
    public String getMissingInfoTable(@PathVariable String role, ModelMap modelMap) {
        logger.info("User tries to get missing course information provided by "+role);

        List<CourseOffering> courseOfferings = aimService.getMissingInfoByRole(role);
        modelMap.addAttribute("courseofferings",courseOfferings) ;
        modelMap.addAttribute("role",role);

        return "courses/missing-course-info-table";
    }

    @RequestMapping(value = "cc-reports", method = RequestMethod.GET)
    public String getCourseCoordinatorReports(ModelMap modelMap) {
        logger.info("User tries to get course coordinator reports.");


        return "courses/cc-reports";
    }
}
