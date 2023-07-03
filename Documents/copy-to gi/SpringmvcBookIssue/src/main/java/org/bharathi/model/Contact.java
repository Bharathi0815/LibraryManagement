package org.bharathi.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="contact")
public class Contact {
	@Id
	String name;
	String email;
	Long phone;
	String message;
	

}
