package com.mujidev.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.mujidev.model.Company;

public interface CompanyService {

  @Transactional
  void saveCompany(Company company);

  Iterable<Company> findAllByUserId(Long userId);

  List<Company> findCompanyByCurrentUser();

  public void updateCompany(Company company);

  public Company findOne(Long theId);

}
