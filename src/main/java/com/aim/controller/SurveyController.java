package com.aim.controller;

/**
 * Created with IntelliJ IDEA.
 * User: Polak
 * Date: 11/19/13
 * Time: 9:30 PM
 * To change this template use File | Settings | File Templates.
 */

import com.aim.dao.SurveyDao;
import com.aim.model.DegreeProgram;
import com.aim.model.Survey;
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
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/surveys")
@PreAuthorize("isAuthenticated()")
public class SurveyController {

    @Autowired
    private AimService aimService;

    private static final Logger logger = Logger.getLogger(SurveyController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String getSurveys(ModelMap modelMap) {
        logger.info("User tries to get surveys.");

        List<Survey> surveys = aimService.getAllSurveys();
        List<DegreeProgram> allDegreePrograms = aimService.getAllDegreeProgram();
        modelMap.addAttribute("surveys",surveys);
        modelMap.addAttribute("allDegreePrograms", allDegreePrograms);
        modelMap.addAttribute("addSurvey", new Survey());


        return "/surveys/allsurveys";
    }

    @RequestMapping(value = "eval/{programId}", method = RequestMethod.GET)
    public String viewEvalSurvey(@PathVariable String programId, ModelMap modelMap){
        List<Survey> surveys = aimService.getSurveysByProgram(programId);
        modelMap.addAttribute("surveys",surveys);
        return "/surveys/allsurveys";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addSurveys(@ModelAttribute Survey survey, ModelMap modelMap,
                             HttpServletRequest request,
                             RedirectAttributes redirectAttributes) {
        logger.info("User adding a survey");

        List<DegreeProgram> dPrograms = new ArrayList<DegreeProgram>();
        for (String degree : request.getParameterValues("degrees"))
            dPrograms.add(aimService.getDegreeProgramById(degree));

        survey.setSemester(request.getParameterValues("semester")[0] + " " + request.getParameterValues("semester")[1]);
        survey.setDegreeprograms(dPrograms);
        survey.setGroups(request.getParameter("groups"));

        aimService.addSurvey(survey);

        redirectAttributes.addFlashAttribute("surveyMessage", "Survey has been successfully added.");

        return "redirect:/surveys";
    }

    @RequestMapping(value="{surveyId}", method = RequestMethod.GET)
    public String getSurveyEditor (@PathVariable String surveyId, ModelMap modelMap) {
        logger.info("User tries to edit survey");

        Survey survey = aimService.getSurveyById(surveyId);
        List<DegreeProgram> degreePrograms = aimService.getAllDegreeProgram();
        String semester = survey.getSemester().split(" ")[0];
        Integer year = Integer.parseInt(survey.getSemester().split(" ")[1]);

        modelMap.addAttribute("survey", survey);
        modelMap.addAttribute("year", year);
        modelMap.addAttribute("semester", semester);
        modelMap.addAttribute("degreePrograms", degreePrograms);

        return "/surveys/edit-survey";
    }

    @RequestMapping(value = "{surveyId}", method = RequestMethod.POST)
    public String modifySurvey(@PathVariable String surveyId,
                               @ModelAttribute Survey survey,
                               HttpServletRequest request,
                               RedirectAttributes modelMap) {

        List<DegreeProgram> dPrograms = new ArrayList<DegreeProgram>();
        for (String degree : request.getParameterValues("degrees"))
            dPrograms.add(aimService.getDegreeProgramById(degree));

        String semester[] = request.getParameterValues("semester");

        survey.setId(Integer.parseInt(surveyId));
        survey.setSemester(semester[0] + " " + semester[1]);
        survey.setDegreeprograms(dPrograms);
        aimService.saveSurvey(survey);

        modelMap.addFlashAttribute("surveyMessage", "Survey has been successfully added.");

        return "redirect:/surveys/";
    }
}
