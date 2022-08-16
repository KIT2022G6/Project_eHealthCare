package edu.multicampus.eHealthCare.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class User {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Id
	private String userID;
	
	private String userName, password;
	
	//roles?
	//
}
