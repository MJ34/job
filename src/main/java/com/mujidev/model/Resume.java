package com.mujidev.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "hrm_resume",uniqueConstraints= @UniqueConstraint(columnNames = {"applicant_id", "fileName"}))
public class Resume {
    
    @Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_Resume")
	@SequenceGenerator(name = "id_Resume", sequenceName = "ID_Resume")
	private int id;
	
	private String fileName;
	private String fileType;
	
	@Lob
	private byte[] data;

    @ManyToOne
    private Applicant applicant;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public Applicant getApplicant() {
        return applicant;
    }

    public void setApplicant(Applicant applicant) {
        this.applicant = applicant;
    }

    @Override
    public String toString() {
        return "Resume [id=" + id + ", fileName=" + fileName + ", fileType=" + fileType + ", data="
                + Arrays.toString(data) + "]";
    }

    public Resume(String fileName, String fileType) {
        super();
        this.fileName = fileName;
        this.fileType = fileType;
    }

    
}
