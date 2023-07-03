package org.bharathi.service;

import org.bharathi.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import org.bharathi.dao.IBooksRepo;





@Service
public class BooksServiceImpl implements IBooksService {
	
	@Autowired
	private IBooksRepo repo;
	
	
	
	
	
	@Override
	public void saveBooks(Book book) {
		System.out.println("service impl save book method");
		
		repo.save(book);
		
		
	}





	@Override
	public List<Book> getBooks() {
		
		
		List<Book> booklist=repo.findAll();
		
		return booklist;
	}





	@Override
	public Book getBookbyId(Integer bookId) {
Optional<Book> book=repo.findById(bookId);
		return book.get();
	}





	@Override
	public void deletebyBookId(Integer bookId) {
		repo.deleteById(bookId);
		
	}





	@Override
	public void updateBooks(Book book) {
		System.out.println("service impl update book method");
		repo.save(book);
		
	}





	@Override
	public boolean isBookExist(Integer bookId) {
	Boolean exist=	repo.existsById(bookId);
		return exist;
	}





	@Override
	public List<Book>getBookByTitle(String value) {
	List<Book> books=repo.findByTitle(value);
		return books;
	}





	@Override
	public List<Book>getBookByAuthor(String value) {
		List<Book> books=repo.findByAuthorName(value);
		return books;
	}





	@Override
	public List<Book> getBookByCategory(String value) {
		List<Book> books=repo.findByCategory(value);
		return books;
	}





	





	

	
	
	
	
}
