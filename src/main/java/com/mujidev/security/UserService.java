package com.mujidev.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.dao.UserRepository;
import com.mujidev.model.Users;

@Service
public class UserService {
  private final UserRepository userRepository;

  @Autowired
  public UserService(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  public Users findUserByEmail(String email) {
    return userRepository.findByMail(email);
  }

  public Users findUserByUserName(String userName) {
    return userRepository.findByUsername(userName);
  }

  public Users getCurrentUser(){
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    return findUserByUserName(auth.getName());
  }

  @Transactional
  public Users saveUser(Users user) {
    user.setActivated(true);
    return userRepository.save(user);
  }

}
