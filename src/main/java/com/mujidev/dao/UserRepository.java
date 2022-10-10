package com.mujidev.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

  User findByMail(String email);
  User findByUsername(String userName);
}
