package com.mujidev.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import com.mujidev.model.Company;


public interface CompanyRepository extends JpaRepository<Company, Long> {

  List<Company> findAllByUserId(Long userId);

}
