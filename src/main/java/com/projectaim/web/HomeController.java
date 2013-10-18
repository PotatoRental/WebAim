package com.projectaim.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(method = RequestMethod.GET)
	public String getHomePage(ModelMap model) {
		model.addAttribute("message", "Hello world!");
        model.addAttribute("title", "Home page");
		return "index";
	}
}