package com.mujidev.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "hrm_family", uniqueConstraints = @UniqueConstraint(columnNames = { "applicant_id", "idCard" }))
public class Family {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_Family")
    @SequenceGenerator(name = "id_Family", sequenceName = "ID_Fam")
    private Integer id;
    private String statusHub;
    private String idCard;
    private String nameFam;
    private String lastEdu;
    private String profesi;
    private String companyName;
    private String telp;
    private String address;
    private String remark;

    @ManyToOne
    private Applicant applicant;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatusHub() {
        return statusHub;
    }

    public void setStatusHub(String statusHub) {
        this.statusHub = statusHub;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getNameFam() {
        return nameFam;
    }

    public void setNameFam(String nameFam) {
        this.nameFam = nameFam;
    }

    public String getLastEdu() {
        return lastEdu;
    }

    public void setLastEdu(String lastEdu) {
        this.lastEdu = lastEdu;
    }

    public String getProfesi() {
        return profesi;
    }

    public void setProfesi(String profesi) {
        this.profesi = profesi;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getTelp() {
        return telp;
    }

    public void setTelp(String telp) {
        this.telp = telp;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Applicant getApplicant() {
        return applicant;
    }

    public void setApplicant(Applicant applicant) {
        this.applicant = applicant;
    }

    @Override
    public String toString() {
        return "Family [id=" + id + ", statusHub=" + statusHub + ", idCard=" + idCard + ", nameFam=" + nameFam
                + ", lastEdu=" + lastEdu + ", profesi=" + profesi + ", companyName=" + companyName + ", telp=" + telp
                + ", address=" + address + ", remark=" + remark + "]";
    }

    public Family(String statusHub, String idCard, String nameFam, String companyName,
            String telp, String address, String remark) {
        super();
        this.statusHub = statusHub;
        this.idCard = idCard;
        this.nameFam = nameFam;
        this.companyName = companyName;
        this.telp = telp;
        this.address = address;
        this.remark = remark;
    }

    public Family() {
        super();
    }

}
