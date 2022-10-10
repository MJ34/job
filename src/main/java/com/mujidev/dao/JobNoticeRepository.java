package com.mujidev.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.JobNotice;

public interface JobNoticeRepository extends JpaRepository<JobNotice, Long> {

  List<JobNotice> findAllByCompanyIdIn(List<Long> companyIds);

}

