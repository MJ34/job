package com.mujidev.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mujidev.dao.UserRepository;
import com.mujidev.model.Users;
import com.mujidev.security.UserService;

@Controller
public class LoginController {

  private final UserService userService;
  private final UserRepository userRepository;

  public LoginController(UserService userService, UserRepository userRepository) {
    this.userService = userService;
    this.userRepository = userRepository;
  }

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public String getLoginPage() {
    return "common/login";
  }

  @RequestMapping(value = "/showCreateNewUser", method = RequestMethod.GET)
  public String showCreateNewUser(Model theModel) {
    Users theBook = new Users();

    theModel.addAttribute("newUser", theBook);

    Map<String, String> userTypes = new HashMap<>();
    userTypes.put("USER", "Job seeker");
    /* userTypes.put("COMPANY_USER","HR"); */

    theModel.addAttribute("userTypes", userTypes);

    return "common/create-new-user";
  }

  @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
  public String updateUser(@ModelAttribute("currentUser") Users user) {

    Users user1 = getCurrentUser();

    user.setUserType(user1.getUserType());
    userRepository.save(user);
    return "redirect:/login";
  }

  private Users getCurrentUser() {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    return userService.findUserByUserName(auth.getName());
  }

}
