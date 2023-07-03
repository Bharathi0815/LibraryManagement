package org.bharathi.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Data
@Entity
@Table(name="bookissue")
public class BookIssue {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer transId;
	
	private Integer stdId;
	
	private String firstName;
	private String lastName;
	
	private Integer bookId;
	private String bookName;
	private String authorName;
	private String  issueDate;
	
	private String dueDate;
	
	private long fine;
	private String bookStatus;
	
}
