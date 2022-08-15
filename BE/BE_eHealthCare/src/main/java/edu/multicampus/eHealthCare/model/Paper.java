package edu.multicampus.eHealthCare.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.sql.Date;
import java.util.Set;

@Entity
@Getter
@Setter
@ToString
public class Paper {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Id
	@Column(name = "paperID", unique = true)
	private String papID;

	private int pOrd, pRoo;
	private Date pVsi;

	@ManyToOne
	@JoinColumn(name = "doctorID")
	private Doctor docID;

	@ManyToOne
	@JoinColumn(name = "patientID")
	private Patient patID;
	
	@ManyToOne
	@JoinColumn(name = "profileID")
	private Profile proID;
	
}
