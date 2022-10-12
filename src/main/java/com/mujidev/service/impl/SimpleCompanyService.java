package com.mujidev.service.impl;

import java.util.Collections;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mujidev.dao.CompanyRepository;
import com.mujidev.enums.UserType;
import com.mujidev.model.Company;
import com.mujidev.model.Users;
import com.mujidev.security.UserService;
import com.mujidev.service.CompanyService;

@Service
@Transactional(readOnly = true)
public class SimpleCompanyService implements CompanyService {

  private final CompanyRepository companyRepository;
  private final UserService userService;

  public SimpleCompanyService(CompanyRepository companyRepository,
      UserService userService) {
    this.companyRepository = companyRepository;
    this.userService = userService;
  }

  @Transactional
  @Override
  public void saveCompany(Company company) {
    companyRepository.save(company);
  }

  @Override
  public Iterable<Company> findAllByUserId(Long userId) {
    return companyRepository.findAllByUserId(userId);
  }

  @Override
  public List<Company> findCompanyByCurrentUser() {

    Users currentUser = userService.getCurrentUser();

    if (UserType.ADMIN.equals(currentUser.getUserType())) {
      return companyRepository.findAll();
    } else if (UserType.COMPANY_USER.equals(currentUser.getUserType())) {
      return companyRepository.findAllByUserId(currentUser.getId());
    } else {
      return Collections.emptyList();
    }

  }

  @Override
  public void updateCompany(Company company) {
    companyRepository.save(company);
  }

  @Override
  public Company findOne(Long theId) {
    return companyRepository.findOne(theId);
  }

}
