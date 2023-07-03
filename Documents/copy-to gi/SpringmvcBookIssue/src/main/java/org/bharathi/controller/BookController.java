package org.bharathi.controller;

import java.util.Map;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bharathi.model.BookIssue;
import java.util.Date;
import java.util.List;

import org.bharathi.exception.BookNotFoundException;
import org.bharathi.model.Book;
import org.bharathi.service.IBookIssueService;
import org.bharathi.service.IBooksService;
import java.text.SimpleDateFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.bharathi.service.ServiceFunctions;
@Controller
@RequestMapping("/book")

public class BookController {
	
	
	
	@Autowired
	private IBooksService bookservice;
	
	
	Logger logger=LoggerFactory.getLogger(BookController.class);
	

   
    
	@GetMapping("/addbook")
  public String addBook(Map<String,Object> model)
  {
	  Book book=new Book();
	  
	  model.put("book", book);
	  
	  return "addbooks";
  }
	 @PostMapping("/savebook")
	public String saveBook(@ModelAttribute Book book,HttpSession session)
	{
		System.out.println("save book method");
		bookservice.saveBooks(book);
		
		session.setAttribute("add", "Book is added with id "+book.getBookId());
		logger.info("New Book is Added with id : "+book.getBookId());
		
		return "redirect:/book/bookslist";
	}
	
	
	@GetMapping("/bookslist")
	public String listBooks(Map<String,Object> model)
	
	{
		List<Book> list=bookservice.getBooks();
		model.put("list", list);
		
		
		return "booklist";
	}
	
	@GetMapping("/deletebook")
	public String deleteBook(@RequestParam Integer bookId,Map<String,Object> model,HttpSession session)
	{
		
		Book book=bookservice.getBookbyId(bookId);
		model.put("book", book);
	    bookservice.deletebyBookId(bookId);
	    session.setAttribute("delete", "Book is deleted with id "+bookId);
	    logger.info("Book is deleted with id : "+bookId);
		
		return "redirect:/book/bookslist";
	}
	
	@GetMapping("/updatebookform")
	public String updateBookform(@RequestParam Integer bookId,Map<String,Object> model)
	
	{
		Book book=bookservice.getBookbyId(bookId);
		
		model.put("book", book);
		
		
		return "bookupdateform";
	}
	
	
	
	 @PostMapping("/updatebook")
		public String updateBook(@ModelAttribute Book book,HttpSession session)
		{
			bookservice.updateBooks(book);
			
			logger.info("Record is updated for book with the id  : "+book.getBookId());
			session.setAttribute("updatemsg", "Book with the  id  :"+book.getBookId()+"is updated");
			System.out.println("book record is updated");
			return "redirect:/book/bookslist";
			
			
		}
	 
	 @GetMapping("/search")
	 public String search(@ModelAttribute Book book)
	 {
		 
		 
		 return "searchpage";
	 }
	 
	 @PostMapping("/process")
	 public String searchProcess(Map<String,Object> model,HttpServletRequest request,HttpSession session) 
	 {
		String value= request.getParameter("keyword");
		 System.out.println(value);
		 String option=request.getParameter("option");
		 List<Book> books=new ArrayList<Book>();
		 
		 if(value.isEmpty())
		 {
			 session.setAttribute("keyword", "Enter Keyword to search ");
			 
			 return "searchresult";
			 
		 }
		
		 System.out.println(option);
		 if(option.equalsIgnoreCase("title"))	 		 
		 {
	 books=bookservice.getBookByTitle(value);
	model.put("books", books);
	System.out.println(books);
	
		 }
		 
		  if(option.equalsIgnoreCase("author"))
		 {
			   books=bookservice.getBookByAuthor(value);
			 model.put("books", books);
			 System.out.println(books);
			 
		 }
		  if(option.equalsIgnoreCase("category"))
		 {
			   books=bookservice.getBookByCategory(value);
			 model.put("books", books);
			 System.out.println(books); 
			
		 }
		  if(books.isEmpty())
			 {
				 session.setAttribute("norecord", "No Records Found for this search ");
				 System.out.println("model is empty");
				 
				 return "searchresult";
				 
			 }
		 
		    return "searchresult";
	 }	
}
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
	 
	 
	 
	

