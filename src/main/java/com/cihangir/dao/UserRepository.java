package com.cihangir.dao;

import com.cihangir.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

  User findByMail(String email);
  User findByUsername(String userName);
}
