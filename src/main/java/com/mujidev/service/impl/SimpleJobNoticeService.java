package com.mujidev.service.impl;

import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.dao.JobNoticeRepository;
import com.mujidev.model.Company;
import com.mujidev.model.JobNotice;
import com.mujidev.service.JobNoticeService;

@Service
@Transactional(readOnly = true)
public class SimpleJobNoticeService implements JobNoticeService {

  private final JobNoticeRepository jobNoticeRepository;

  public SimpleJobNoticeService(JobNoticeRepository jobsRepository) {
    this.jobNoticeRepository = jobsRepository;
  }


  @Transactional
  @Override
  public void saveJobs(JobNotice jobs) {
    jobNoticeRepository.save(jobs);
  }

  @Override
  public Iterable<JobNotice> findAllByUserId(Long userId) {
    return jobNoticeRepository.findAll();
  }

  @Override
  public Iterable<JobNotice> findAllByCompanyIdIn(List<Company> companies) {
    List<Long> companyIds = companies.stream().map(Company::getId).collect(
        Collectors.toList());

    return jobNoticeRepository.findAllByCompanyIdIn(companyIds);
  }

  @Override
  public void updateBook(JobNotice jobs) {
    jobNoticeRepository.save(jobs);
  }


  @Override
  public JobNotice findOne(Long theId) {
    return jobNoticeRepository.findOne(theId);
  }

  @Override
  public void deleteBook(Long theId) {
    jobNoticeRepository.delete(theId);
  }


  @Override
  public Iterable<JobNotice> findAll() {
    return jobNoticeRepository.findAll();
  }


}
