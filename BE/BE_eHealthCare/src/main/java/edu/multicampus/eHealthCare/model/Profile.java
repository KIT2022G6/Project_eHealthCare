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
public class Profile {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Id
    @Column(name = "profileID", unique = true)
    private String proID;

    private String pDia;
    private String pHis;

    @OneToMany(mappedBy = "proID", cascade = CascadeType.ALL)
	private Set<Paper> listPaper;

 
}
