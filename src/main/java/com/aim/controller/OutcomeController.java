package com.aim.controller;

import com.aim.model.Course;
import com.aim.model.DegreeProgram;
import com.aim.model.StudentOutcome;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/18/13
 * Time: 1:26 PM
 */
@Controller
@RequestMapping("/outcome")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class OutcomeController {

    private static final Logger logger = Logger.getLogger(OutcomeController.class);

    @Autowired
    private AimService aimService;


    @RequestMapping(value = "tabulate-outcomes", method = RequestMethod.GET)
    public String getTabulatedOutcomes(ModelMap modelMap) {

        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        modelMap.addAttribute("degreeprograms",degreePrograms);
        logger.info("User tries to tabulate student outcomes");
        return "student-outcomes/tabulate-outcomes";
    }

    @RequestMapping(value = "manage-outcomes", method = RequestMethod.GET)
    public String getAllOutcomes(ModelMap modelMap) {
        logger.info("User tries to get all outcomes' information");

        List<StudentOutcome> studentOutcomes = aimService.getAllStudentOutcomes();
        modelMap.addAttribute("studentoutcomes",studentOutcomes);
        return "student-outcomes/manage-outcomes";
    }

    @RequestMapping(value = "{programId}/tabulate/{outcome}", method = RequestMethod.GET)
    public String getOffering(@PathVariable String programId, @PathVariable String outcome, ModelMap modelMap) {

        List<Course> courses = aimService.getCoursesByDegreeProgram(programId);
        DegreeProgram degreeProgram = aimService.getDegreeProgramById(programId);
        List<StudentOutcome> studentOutcomes = aimService.getStudentOutcomeProgram(degreeProgram);
        List<String> studentOutcomeCourseOutcome = aimService.getStudentOutcomeCourseOutcome();

        modelMap.addAttribute("courses", courses);
        modelMap.addAttribute("studentoutcomes",studentOutcomes);
        modelMap.addAttribute("studentoutcomecourseoutcome",studentOutcomeCourseOutcome);
        modelMap.addAttribute("selectedoutcome",outcome);

        return "student-outcomes/table";
    }

    @RequestMapping(value="{outcomeId}/edit", method=RequestMethod.GET)
    public String getPeoEditor(@PathVariable String outcomeId, ModelMap modelMap){
        logger.info("User edits student outcome: "+outcomeId);

        StudentOutcome studentOutcome = aimService.getStudentOutcomeById(outcomeId);
        modelMap.addAttribute("studentoutcome",studentOutcome);

        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        modelMap.addAttribute("degreeprograms",degreePrograms);

        return "student-outcomes/edit-outcomes";
    }

    @RequestMapping(value="printable",method=RequestMethod.GET)
    public String getPrintable(ModelMap modelMap){
        return "/student-outcomes/printable";
    }

}
