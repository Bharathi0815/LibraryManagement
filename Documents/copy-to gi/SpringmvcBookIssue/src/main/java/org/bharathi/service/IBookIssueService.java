package org.bharathi.service;

import java.util.List;

import org.bharathi.model.BookIssue;
import org.bharathi.model.Book;

public interface IBookIssueService {
	public void saveBookIssue(BookIssue bookissue);
	public List<BookIssue> getIssuedBooks();
	public void deleteIssuedBook(Integer transId);
	public BookIssue getIssuedBookByTansId(Integer transId);
	public List<BookIssue> getbyStdId(Integer stdId);
	public Integer noofBooksIssued(Integer stdId); 
	public void updateIssuedBook(BookIssue issuebook);
	
}
