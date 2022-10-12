package com.mujidev.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "hrm_aplicant", uniqueConstraints = @UniqueConstraint(columnNames = { "id", "userId" }))
public class Applicant {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "id", nullable = false, updatable = false)
  private Long id;

  private String idCard;
	private String placeBirth;
	private String phoneNumber;
	private String religion;
	private String address;

	private Date dateBirth;
  
  @Column(name = "userId")
  private Long userId;

  @ManyToOne
  @NotFound(action = NotFoundAction.IGNORE)
  @JoinColumn(name = "userId", referencedColumnName = "id", insertable = false, updatable = false, foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
  private Users user;

  @OneToMany(targetEntity = Education.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<Education> educationList;

  @OneToMany(targetEntity = Resume.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<Resume> resumeList;

  @OneToMany(targetEntity = Organization.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<Organization> organizationList;

  @OneToMany(targetEntity = Family.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<Family> familyList;

  @OneToMany(targetEntity = Skills.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<Skills> skillsList;

  @OneToMany(targetEntity = WorkExperience.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "applicant_id")
	@JsonIgnore
	private List<WorkExperience> workExperienceList;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getUserId() {
    return userId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public String getIdCard() {
    return idCard;
  }

  public void setIdCard(String idCard) {
    this.idCard = idCard;
  }

  public String getPlaceBirth() {
    return placeBirth;
  }

  public void setPlaceBirth(String placeBirth) {
    this.placeBirth = placeBirth;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getReligion() {
    return religion;
  }

  public void setReligion(String religion) {
    this.religion = religion;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public Date getDateBirth() {
    return dateBirth;
  }

  public void setDateBirth(Date dateBirth) {
    this.dateBirth = dateBirth;
  }

  public List<Education> getEducationList() {
    return educationList;
  }

  public void setEducationList(List<Education> educationList) {
    this.educationList = educationList;
  }

  public List<Resume> getResumeList() {
    return resumeList;
  }

  public void setResumeList(List<Resume> resumeList) {
    this.resumeList = resumeList;
  }

  public List<Organization> getOrganizationList() {
    return organizationList;
  }

  public void setOrganizationList(List<Organization> organizationList) {
    this.organizationList = organizationList;
  }

  public List<Family> getFamilyList() {
    return familyList;
  }

  public void setFamilyList(List<Family> familyList) {
    this.familyList = familyList;
  }

  public List<Skills> getSkillsList() {
    return skillsList;
  }

  public void setSkillsList(List<Skills> skillsList) {
    this.skillsList = skillsList;
  }

  public List<WorkExperience> getWorkExperienceList() {
    return workExperienceList;
  }

  public void setWorkExperienceList(List<WorkExperience> workExperienceList) {
    this.workExperienceList = workExperienceList;
  }

  public Users getUser() {
    return user;
  }

  public void setUser(Users user) {
    this.user = user;
  }

  @Override
  public String toString() {
    return "Applicant [id=" + id + ", idCard=" + idCard + ", placeBirth=" + placeBirth + ", phoneNumber=" + phoneNumber
        + ", religion=" + religion + ", address=" + address + ", dateBirth=" + dateBirth + ", userId=" + userId
        + ", user=" + user + "]";
  }

/*   public Applicant(String idCard, String phoneNumber, String address) {
    super();
    this.idCard = idCard;
    this.phoneNumber = phoneNumber;
    this.address = address;
  } */

  
}
