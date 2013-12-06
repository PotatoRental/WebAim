package com.aim.controller;

import com.aim.model.Minutes;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
//import org.joda.time.LocalDate;
import org.joda.time.LocalDate;
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
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping(value = "/minutes")
@PreAuthorize("isAuthenticated()")
public class MinutesController {
    private static final Logger logger = Logger.getLogger(MinutesController.class);

    @Autowired
    private AimService aimService;

    @RequestMapping(method = RequestMethod.GET)
    public String getMinutes(ModelMap modelMap) {
        logger.info("User tries to get minutes.");

        List<Minutes> minutesList =  aimService.getAllMinutes();
        modelMap.addAttribute("minuteslist",minutesList);
        modelMap.addAttribute("minutes", new Minutes());

        return "/minutes/allminutes";
    }

    @RequestMapping(value="eval/{programId}", method = RequestMethod.GET)
    public String getMinutesEval (@PathVariable String programId, ModelMap modelMap) {

        List<Minutes> minutes = aimService.getMinutesByProgramId(programId);
        modelMap.addAttribute("minuteslist",minutes);

        return "/minutes/allminutes";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addMinutes(@ModelAttribute Minutes minutes,
                             HttpServletRequest request,
                             RedirectAttributes modelMap) {
        logger.info("User tries to get minutes.");

        List<Minutes> minutesList =  aimService.getAllMinutes();
        modelMap.addAttribute("minuteslist",minutesList);

        minutes.setId(new Random().nextInt(Integer.MAX_VALUE));
        minutes.setGroups(request.getParameter("group"));
        minutes.setDate(new LocalDate(Integer.parseInt(request.getParameter("year")), Integer.parseInt(request.getParameter("month")), Integer.parseInt(request.getParameter("day"))).toDate());

        aimService.addMinutes(minutes);

        modelMap.addFlashAttribute("minutesMessage", "Added new minutes");

        return "redirect:/minutes";
    }

    @RequestMapping(value="{minutesId}", method = RequestMethod.GET)
    public String getMinutesEditor (@PathVariable String minutesId, ModelMap modelMap) {
        logger.info("User tries to edit minutes.");

        Minutes minutes = aimService.getMinutesById(minutesId);
        modelMap.addAttribute("minutes",minutes);

        return "/minutes/edit-minutes";
    }

    @RequestMapping(value="{minutesId}/delete", method=RequestMethod.GET)
    public String deleteMinutes (@PathVariable String minutesId, ModelMap modelMap) {
        aimService.deleteMinutesById(minutesId);
        return "redirect:/minutes";
    }

    @RequestMapping(value="{minutesId}", method = RequestMethod.POST)
    public String modifyMinute(@PathVariable Integer minutesId,
                               @ModelAttribute Minutes minutes,
                               RedirectAttributes modelMap,
                               BindingResult bindingResult,
                               HttpServletRequest request) {

        Integer month = Integer.parseInt(request.getParameter("month"));
        Integer day = Integer.parseInt(request.getParameter("day"));
        Integer year = Integer.parseInt(request.getParameter("year"));

        Date date = new LocalDate(year, month, day).toDate();

        minutes.setId(minutesId);
        minutes.setDate(date);
        minutes.setGroups(request.getParameter("group"));

        aimService.saveMinutes(minutes);

        modelMap.addFlashAttribute("minutesMessage", "Minutes has been successfully modified");

        return "redirect:/minutes";
    }



}
