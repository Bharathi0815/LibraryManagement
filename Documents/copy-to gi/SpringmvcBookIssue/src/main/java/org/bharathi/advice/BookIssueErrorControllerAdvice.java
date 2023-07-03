package org.bharathi.advice;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bharathi.error.ErrorDetails;
import org.bharathi.exception.UserNotFoundException;
import org.bharathi.exception.BookNotFoundException;
import org.bharathi.exception.AccessDeniedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class BookIssueErrorControllerAdvice {
	
	


	
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception e)
	{
		
		
		System.out.println("Handles default Exception");
	ErrorDetails details=new ErrorDetails(e.getMessage(),LocalDateTime.now(),"404-Not Found");
	       ModelAndView model=new ModelAndView();
	       model.addObject(details);
	       model.setViewName("error");
		//return new ResponseEntity<ErrorDetails>(details,HttpStatus.NOT_FOUND);
		
		
		return model;
	}
	
	
	
	@ExceptionHandler(AccessDeniedException.class)
	public ModelAndView handleAccessDeniedException(HttpServletRequest request, Exception ex){
		
		
		ModelAndView modelAndView = new ModelAndView();
		
	    modelAndView.addObject("exception", ex.getMessage());
	    modelAndView.addObject("url", request.getRequestURL());
	    
	    modelAndView.setViewName("error");
	    return modelAndView;
	}
	
	
	
	
	@ExceptionHandler(UserNotFoundException.class)
	public ModelAndView handleUserNotFoundException(HttpServletRequest request, Exception ex){
		
		
		ModelAndView modelAndView = new ModelAndView();
		
	    modelAndView.addObject("exception", ex.getMessage());
	    modelAndView.addObject("url", request.getRequestURL());
	    
	    modelAndView.setViewName("error");
	    return modelAndView;
	}
	
	@ExceptionHandler(BookNotFoundException.class)
	public ModelAndView handleBookNotFoundException(HttpServletRequest request, Exception ex){
		
		
		ModelAndView modelAndView = new ModelAndView();
		
	    modelAndView.addObject("exception", ex.getMessage());
	    modelAndView.addObject("url", request.getRequestURL());
	    
	    modelAndView.setViewName("error");
	    
	    return modelAndView;
	}
	
	
	
	
}
