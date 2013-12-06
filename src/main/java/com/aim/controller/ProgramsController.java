package com.aim.controller;

import com.aim.model.DegreeProgram;
import com.aim.model.Peo;
import com.aim.model.StudentOutcome;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
    public String getProgram(ModelMap modelMap) {
        logger.info("User tries to get degree programs.");

        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        List<StudentOutcome> studentOutcomes = aimService.getAllStudentOutcomes();
        List<Peo> peos = aimService.getAllPeos();

        modelMap.addAttribute("degreeprograms",degreePrograms);
        modelMap.addAttribute("studentoutcomes",studentOutcomes);
        modelMap.addAttribute("peos",peos);

        return "/programs/programs";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addProgram(HttpServletRequest request,
                             RedirectAttributes attributes,
                             ModelMap modelMap) {
        logger.info("User tries to get degree programs.");

        DegreeProgram program = new DegreeProgram();
        program.setId(request.getParameter("id"));
        program.setDescription(request.getParameter("description"));
        program.setDepartment(request.getParameter("department"));

        List<Peo> peos = new ArrayList<Peo>();
        for (String peozor : request.getParameterValues("peo"))
            peos.add(aimService.getPeoById(peozor));

        List<StudentOutcome> outcomes = new ArrayList<StudentOutcome>();
        for (String outcome : request.getParameterValues("student-outcomes"))
            outcomes.add(aimService.getStudentOutcomeById(outcome));

        program.setPeos(peos);
        program.setStudentOutcomes(outcomes);

        aimService.addProgram(program);

        return "redirect:/programs/";
    }

    @RequestMapping(value = "{programId}/edit", method = RequestMethod.GET)
    public String getProgramEditor(@PathVariable String programId, ModelMap modelMap) {

        DegreeProgram degreeProgram = aimService.getDegreeProgramById(programId);
        List<StudentOutcome> studentOutcomes = aimService.getAllStudentOutcomes();
        List<Peo> peos = aimService.getAllPeos();

        modelMap.addAttribute("degreeprogram",degreeProgram);
        modelMap.addAttribute("studentoutcomes",studentOutcomes);
        modelMap.addAttribute("peos",peos);

        return "/programs/edit-program";
    }

    @RequestMapping(value = "{programId}/edit", method = RequestMethod.POST)
    public String submitProgrameditor(@PathVariable String programId, ModelMap modelMap, HttpServletRequest request,
                                      @ModelAttribute DegreeProgram degreeProgram) {

        DegreeProgram program = aimService.getDegreeProgramById(programId);

        program.setDescription(request.getParameter("description"));
        program.setDepartment(request.getParameter("department"));
        List<StudentOutcome> outcomes = new ArrayList<StudentOutcome>();
        for (String out : request.getParameterValues("student-outcomes"))
            outcomes.add(aimService.getStudentOutcomeById(out));

        program.setStudentOutcomes(outcomes);

        aimService.saveProgram(program);

        return "/programs/programs";
    }

}
