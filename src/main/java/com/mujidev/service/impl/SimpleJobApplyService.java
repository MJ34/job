package com.mujidev.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.dao.JobApplyRepository;
import com.mujidev.service.JobApplyService;

@Service
@Transactional(readOnly = true)
public class SimpleJobApplyService implements JobApplyService {

  private final JobApplyRepository jobApplyRepository;


  public SimpleJobApplyService(JobApplyRepository jobApplyRepository) {
    this.jobApplyRepository = jobApplyRepository;
  }
}
