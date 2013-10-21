package com.aim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Properties;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private Properties properties;

	@RequestMapping(method = RequestMethod.GET)
	public String getHomePage(ModelMap model) {
		return "index";
	}

    @RequestMapping(value = "globalMessage", method = RequestMethod.POST)
    public String setGlobalMessage(@RequestParam String globalMessage) {
        properties.setProperty("globalMessage", globalMessage);
        return "redirect:/";
    }
}