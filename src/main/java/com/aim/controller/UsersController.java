package com.aim.controller;

import com.aim.model.Course;
import com.aim.model.UserAccount;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/18/13
 * Time: 1:26 PM
 */
@Controller
@RequestMapping("/users")
@PreAuthorize("hasAnyRole('ROLE_ADMIN, ROLE_CIC')")
public class UsersController {

    private static final Logger logger = Logger.getLogger(UsersController.class);

    @Autowired
    private AimService aimService;

    @RequestMapping(method = RequestMethod.GET)
    public String getAllUsers(ModelMap modelMap) {
        logger.info("User tries to get all users' information.");

        List<UserAccount> userList = aimService.getAllUsers();
        modelMap.addAttribute("userlist", userList);

        return "users/allusers";
    }

    @RequestMapping(value = "ajax", method = RequestMethod.GET)
    public @ResponseBody String getAllUsers() {
        return "body";
    }

    @RequestMapping(value = "{userid}", method = RequestMethod.GET)
    public String getUser(ModelMap modelMap) {
        return "users/userprofile";
    }

    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public String getUserEditor(ModelMap modelMap) {
        return "users/userprofile-edit";
    }



}
