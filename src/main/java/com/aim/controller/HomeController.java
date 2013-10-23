package com.aim.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Properties;

@Controller
@RequestMapping("/")
public class HomeController {

    private static final Logger logger = Logger.getLogger(HomeController.class);

    @Autowired
    private Properties globalProperties;

	@RequestMapping(method = RequestMethod.GET)
	public String getHomePage(ModelMap model) {
        logger.info("User gets the home page");

        return "index";
	}

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "globalMessage", method = RequestMethod.POST)
    public ModelAndView setGlobalMessage(@RequestParam String globalMessage) {
        globalProperties.setProperty("globalMessage", globalMessage);

        RedirectView redirect = new RedirectView("/");
        redirect.setExposeModelAttributes(false);

        logger.info("User sets global message to " + globalMessage);

        return new ModelAndView(redirect);
    }
}