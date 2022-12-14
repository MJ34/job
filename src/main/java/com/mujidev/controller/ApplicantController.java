package com.mujidev.controller;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mujidev.dao.ApplicantRepository;
import com.mujidev.dao.JobApplyRepository;
import com.mujidev.model.Applicant;
import com.mujidev.model.JobApply;
import com.mujidev.model.JobNotice;
import com.mujidev.model.Users;
import com.mujidev.security.UserService;
import com.mujidev.service.CompanyService;
import com.mujidev.service.JobNoticeService;
import com.mujidev.vm.ApplicantJobNoticeReportVM;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {

  private final CompanyService companyService;
  private final JobNoticeService jobNoticeService;
  private final UserService userService;
  private final ApplicantRepository applicantRepository;
  private final JobApplyRepository jobApplyRepository;

  @Autowired
  public ApplicantController(CompanyService companyService,
      JobNoticeService jobsService, UserService userService,
      ApplicantRepository applicantRepository,
      JobApplyRepository jobApplyRepository) {
    this.companyService = companyService;
    this.jobNoticeService = jobsService;
    this.userService = userService;
    this.applicantRepository = applicantRepository;
    this.jobApplyRepository = jobApplyRepository;
  }

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public String showMainPage(Model model) {
    setCurrentUser(model);
    return "dashboard/users/index";
  }

  @RequestMapping(value = "/info", method = RequestMethod.GET)
  public String showApplicantInfo(Model model) {
    Users currentUser = getCurrentUser();
    setCurrentUser(currentUser, model);

    Applicant applicant = applicantRepository.findByUserId(currentUser.getId())
        .orElseGet(Applicant::new);

    applicant.setUserId(currentUser.getId());
    applicant.setUser(currentUser);
    model.addAttribute("applicantInfo", applicant);

    return "applicant/applicant-info";
  }

  @RequestMapping(value = "/saveApplicant", method = RequestMethod.POST)
  public String saveBook(@ModelAttribute("applicantInfo") Applicant applicant) {

    Users currentUser = getCurrentUser();
    applicant.setUserId(currentUser.getId());
    applicant.setUser(null);
    applicantRepository.save(applicant);

    return "redirect:/applicant/main";
  }


  @RequestMapping(value = "/job-notices", method = RequestMethod.GET)
  public String getJobNotices(Model model) {

    Users currentUser = getCurrentUser();
    List<ApplicantJobNoticeReportVM> applicantJobNoticeReports = new ArrayList<>();

    Iterable<JobNotice> jobNotices = jobNoticeService.findAll();
    for (JobNotice jobNotice : jobNotices) {

      ApplicantJobNoticeReportVM applicantJobNoticeReport = new ApplicantJobNoticeReportVM();
      applicantJobNoticeReport.setJobNotice(jobNotice);

      jobNotice.getJobApplies().stream().filter(
          jobApply -> Objects.equals(jobApply.getApplicant().getUserId(), currentUser.getId()))
          .findFirst()
          .ifPresent( jobApply -> {
            applicantJobNoticeReport.setApplied(true);
            applicantJobNoticeReport.setApplyDate(jobApply.getApplyDateTime());
          });

      applicantJobNoticeReports.add(applicantJobNoticeReport);
    }

    model.addAttribute("jobNotices", applicantJobNoticeReports);
    model.addAttribute("currentUser",currentUser);
    return "applicant/job-notice-list";
  }

  @RequestMapping(value = "/applyJobNotice", method = RequestMethod.GET)
  public String applyJobNotice(@RequestParam("id") Long id) {

    Users currentUser = getCurrentUser();
    Applicant applicant = applicantRepository.findByUserId(currentUser.getId()).orElseThrow(
        () -> new IllegalArgumentException("User Information is not available in the system."));

    JobApply jobApply = new JobApply();
    jobApply.setApplicantId(applicant.getId());
    jobApply.setJobNoticeId(id);
    jobApply.setApplyDateTime(
        DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss").format(LocalDateTime.now()));
    jobApplyRepository.save(jobApply);

    return "redirect:/applicant/job-notices";
  }

  @RequestMapping(value = "/showUserInfo", method = RequestMethod.GET)
  public String showUserInfo(Model theModel) {

    Map<String, String> userTypes = new HashMap<>();
    userTypes.put("USER","Job Seeker");
    userTypes.put("COMPANY_USER","HR");

    theModel.addAttribute("userTypes", userTypes);
    Users theUser = getCurrentUser();
    theModel.addAttribute("currentUser", theUser);

    return "dashboard/users/profile/index";
  }


  private void setCurrentUser(Model model) {
    Users currentUser = getCurrentUser();
    model.addAttribute("currentUser", currentUser);
  }

  private void setCurrentUser(Users user, Model model) {
    model.addAttribute("currentUser", user);
  }

  private Users getCurrentUser() {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    return userService.findUserByUserName(auth.getName());
  }


}
