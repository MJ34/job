package com.mujidev.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.Users;

public interface UserRepository extends JpaRepository<Users, Long> {

  Users findByMail(String email);

  Users findByUsername(String userName);
}
