package com.aim.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.security.Principal;
import java.util.Locale;

/**
 * User: Milky
 * Date: 10/18/13
 * Time: 4:19 AM
 */
@Controller
@RequestMapping("/login")
@SessionAttributes("loginForm")
public class LoginController {

    private static final Logger logger = Logger.getLogger(LoginController.class);

    @Autowired
    private MessageSource messageSource;

    private SecurityContextHolder securityContextHolder;

    @RequestMapping(method = RequestMethod.GET)
    public String defaultLogin() {
        logger.info("Get default login page");
        return "login/login";
    }

    @RequestMapping("success")
    public ModelAndView successLogin(Principal principal, RedirectAttributes redirectAttributes) {
        logger.info("login succeed: " + principal.getName() + " As "+ securityContextHolder.getContext().getAuthentication().getAuthorities());
        String welcomeMessage = messageSource.getMessage("welcome", new Object[]{ principal.getName() }, new Locale("es_ES"));
        redirectAttributes.addFlashAttribute("welcomeMessage", welcomeMessage);

        RedirectView view = new RedirectView("/");
        view.setExposeModelAttributes(false);

        return new ModelAndView(view);
    }
}
