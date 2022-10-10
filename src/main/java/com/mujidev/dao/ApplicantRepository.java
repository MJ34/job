package com.mujidev.dao;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.Applicant;


public interface ApplicantRepository extends JpaRepository<Applicant, Long> {

  Optional<Applicant> findByUserId(Long userId);

}
