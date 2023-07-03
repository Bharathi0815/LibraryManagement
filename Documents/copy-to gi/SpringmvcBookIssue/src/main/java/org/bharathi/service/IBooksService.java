package org.bharathi.service;

import java.util.List;

import org.bharathi.model.Book;

public interface IBooksService {
	public void saveBooks(Book book);
	public List<Book> getBooks();
    public Book getBookbyId(Integer bookId);
    public void deletebyBookId(Integer bookId);
    public void updateBooks(Book book);
    public boolean isBookExist(Integer bookId);
    public List<Book> getBookByTitle(String value);
    public List<Book> getBookByAuthor(String value);
    public List<Book>getBookByCategory(String value);
    
}
