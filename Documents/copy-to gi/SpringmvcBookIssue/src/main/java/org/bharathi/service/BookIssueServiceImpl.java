package org.bharathi.service;

import java.util.List;
import java.util.Optional;

import org.bharathi.dao.IBookIssueRepo;
import org.bharathi.model.BookIssue;
import org.bharathi.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookIssueServiceImpl implements IBookIssueService {
	@Autowired
	private IBookIssueRepo repo;

	@Override
	public void saveBookIssue(BookIssue bookissue) {
		
		
		repo.save(bookissue);
		System.out.println("Data is saved");
		
	}

	@Override
	public List<BookIssue> getIssuedBooks() {
	List<BookIssue> booklist=repo.findAll();
		return booklist;
	}

	@Override
	public void deleteIssuedBook(Integer transId) {
		repo.deleteById(transId);
		
	}

	@Override
	public BookIssue getIssuedBookByTansId(Integer transId) {
	Optional<BookIssue> bookissue=repo.findById(transId);
		return bookissue.get();
	}

	@Override
	public List<BookIssue> getbyStdId(Integer stdId) {
		List<BookIssue> books=repo.findAllBystdId(stdId);
		
		return books;
	}

	@Override
	public Integer noofBooksIssued(Integer stdId) {
		
     Integer count=repo.countBystdId(stdId);
		return count;
	}

	@Override
	public void updateIssuedBook(BookIssue issuebook) {
		repo.save(issuebook);
	}

	

	

	

}
