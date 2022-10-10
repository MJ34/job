package com.mujidev.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.dao.ApplicantRepository;
import com.mujidev.service.ApplicantService;

@Service
@Transactional(readOnly = true)
public class SimpleApplicantService implements ApplicantService {

  private final ApplicantRepository applicantRepository;

  public SimpleApplicantService(ApplicantRepository applicantRepository) {
    this.applicantRepository = applicantRepository;
  }
}
