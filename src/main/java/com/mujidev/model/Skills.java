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
@Table(name="hrm_skills",uniqueConstraints= @UniqueConstraint(columnNames = {"applicant_id", "name"}))
public class Skills {
    
    @Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_Skills")
	@SequenceGenerator(name = "id_Skills", sequenceName = "ID_Skills")
	private Integer id;
	private String name;
	
    @ManyToOne
    private Applicant applicant;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Applicant getApplicant() {
        return applicant;
    }

    public void setApplicant(Applicant applicant) {
        this.applicant = applicant;
    }

    @Override
    public String toString() {
        return "Skills [id=" + id + ", name=" + name + "]";
    }

    public Skills(String name) {
        super();
        this.name = name;
    }

    
}
