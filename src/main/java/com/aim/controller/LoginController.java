package com.aim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * User: Milky
 * Date: 10/18/13
 * Time: 4:19 AM
 */
@Controller
@RequestMapping("/login")
@SessionAttributes("loginForm")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public String defaultLogin() {
        return "login/login";
    }

    @RequestMapping(value = "success")
    public String successLogin(ModelMap modelMap) {
        return "redirect:/";
    }
}
