package com.aim.controller;

import com.aim.model.Role;
import com.aim.model.UserAccount;
import com.aim.service.AimService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
        modelMap.addAttribute("newUser", new UserAccount());

        return "users/allusers";
    }

    @RequestMapping(value = "ajax", method = RequestMethod.GET)
    public @ResponseBody String getAllUsers() {
        return "body";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addNewUser(@ModelAttribute UserAccount newUser,
                             RedirectAttributes attributes,
                             BindingResult results,
                             HttpServletRequest request) {
        List<Role> role = new ArrayList<Role>();
        for (String val : request.getParameterValues("role"))
            role.add(new Role(val));

        newUser.setRoles(role);

        aimService.addUser(newUser);

        attributes.addFlashAttribute("userMessage", "New user " + newUser.getFirstName() + " " + newUser.getLastName() + " has been added");

        return "redirect:/users/" + newUser.getUsername();
    }

    @RequestMapping(value = "{userId}", method = RequestMethod.GET)
    public String getUser(@PathVariable String userId, ModelMap modelMap) {
        logger.info("User tries to view user: "+userId);

        UserAccount user = aimService.getUserByUsername(userId);
        modelMap.addAttribute("user",user);

        return "users/userprofile";
    }

    @RequestMapping(value = "{userId}/edit", method = RequestMethod.GET)
    public String getUserEditor(@PathVariable String userId,ModelMap modelMap) {

        UserAccount user = aimService.getUserByUsername(userId);
        modelMap.addAttribute("user",user);

        return "users/userprofile-edit";
    }

    @RequestMapping(value = "{userId}/edit", method = RequestMethod.POST)
    public String submitUserEditor(@ModelAttribute UserAccount account,
                                   HttpServletRequest request,
                                   RedirectAttributes attributes) {

        UserAccount dataAccount = aimService.getUserByUsername(account.getUsername());
        account.setPassword(dataAccount.getPassword());
        account.setDegreeprograms(dataAccount.getDegreeprograms());

        List<Role> role = new ArrayList<Role>();
        for (String val : request.getParameterValues("role"))
            role.add(new Role(val));

        account.setRoles(role);

        aimService.saveUser(account);
        attributes.addFlashAttribute("userMessage", "User " + account.getFirstName() + " " + account.getLastName() + " has been modified");

        return "redirect:/users/" + account.getUsername();
    }
}
