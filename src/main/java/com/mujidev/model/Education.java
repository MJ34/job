package com.mujidev.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.mujidev.enums.EduType;

@Entity
@Table(name = "hrm_edu", uniqueConstraints = @UniqueConstraint(columnNames = { "applicant_id" }))
public class Education {

    @Id
    @Column(name = "educationId")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_Education")
    @SequenceGenerator(name = "id_Education", sequenceName = "ID_Edu")
    private int educationId;
    private String university;
    private String major;
    private Float percentage;
    private Date dateIn;
    private Date dateOut;

    @Column(name = "edu_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private EduType eduType;

    @ManyToOne
    Applicant applicant;    

    public int getEducationId() {
        return educationId;
    }

    public void setEducationId(int educationId) {
        this.educationId = educationId;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Date getDateIn() {
        return dateIn;
    }

    public void setDateIn(Date dateIn) {
        this.dateIn = dateIn;
    }

    public Date getDateOut() {
        return dateOut;
    }

    public void setDateOut(Date dateOut) {
        this.dateOut = dateOut;
    }

    public EduType getEduType() {
        return eduType;
    }

    public void setEduType(EduType eduType) {
        this.eduType = eduType;
    }

    public Float getPercentage() {
        return percentage;
    }

    public void setPercentage(Float percentage) {
        this.percentage = percentage;
    }

    public Applicant getApplicant() {
        return applicant;
    }

    public void setApplicant(Applicant applicant) {
        this.applicant = applicant;
    }

    public Education(String university, String major, Float percentage, Date dateIn, Date dateOut) {
        this.university = university;
        this.major = major;
        this.percentage = percentage;
        this.dateIn = dateIn;
        this.dateOut = dateOut;
    }

    @Override
    public String toString() {
        return "Education [educationId=" + educationId + ", university=" + university + ", major=" + major
                + ", percentage=" + percentage + ", dateIn=" + dateIn + ", dateOut=" + dateOut + ", eduType=" + eduType
                + "]";
    }

    
    
}
