package org.bharathi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.NonNull;

@Entity
@Data
public class User {
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer userId;
		
	private String firstName;
	private String lastName;
	
	@Column(unique=true, nullable=false) 
	private String password;

	private String role;
	
	public User()
	{
		
	}

}
