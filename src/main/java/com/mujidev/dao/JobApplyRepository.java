package com.mujidev.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.JobApply;


public interface JobApplyRepository extends JpaRepository<JobApply, Long> {
}
