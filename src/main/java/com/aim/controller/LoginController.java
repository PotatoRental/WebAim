package com.aim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @Autowired
    private MessageSource messageSource;

    @RequestMapping(method = RequestMethod.GET)
    public String defaultLogin() {
        return "login/login";
    }

    @RequestMapping("success")
    public String successLogin(Principal principal, RedirectAttributes redirectAttributes) {
        String welcomeMessage = messageSource.getMessage("welcome", new Object[]{ principal.getName() }, new Locale("es_ES"));
        redirectAttributes.addFlashAttribute("message", welcomeMessage);

        return "redirect:/";
    }
}
