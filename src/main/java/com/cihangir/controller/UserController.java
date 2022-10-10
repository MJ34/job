package com.cihangir.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cihangir.dao.UserRepository;
import com.cihangir.enums.UserType;
import com.cihangir.model.User;

@Controller
public class UserController {

  private final UserRepository userRepository;

  public UserController(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  @RequestMapping(value = "/saveNewUser", method = RequestMethod.POST)
  public String saveUser(@ModelAttribute("newUser") User user) {

    user.setActivated(true);
    user.setUserType(UserType.USER);
    userRepository.save(user);

    return "redirect:/login";
  }

}
