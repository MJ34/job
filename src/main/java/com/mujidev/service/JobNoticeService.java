package com.mujidev.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.model.Company;
import com.mujidev.model.JobNotice;

public interface JobNoticeService {

    @Transactional
    void saveJobs(JobNotice jobs);

    Iterable<JobNotice> findAllByUserId(Long userId);

    Iterable<JobNotice> findAllByCompanyIdIn(List<Company> companies);

    public void updateBook(JobNotice jobs);

    public JobNotice findOne(Long theId);

    public void deleteBook(Long theId);

    Iterable<JobNotice> findAll();
}
