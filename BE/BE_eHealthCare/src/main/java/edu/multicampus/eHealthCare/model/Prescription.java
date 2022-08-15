package edu.multicampus.eHealthCare.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Set;

@Entity
@Getter
@Setter
@ToString
public class Prescription {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Id
	@Column(name = "prescriptionID", unique = true)
	private String precriptionID;

	private int pAmo, pDos;
	private String pDet;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "paperID", nullable = false)
    private Paper papID;

	@OneToMany(mappedBy = "precriptionID", cascade = CascadeType.ALL)
	private Set<MedInvoice> listMedInvoice;

}
