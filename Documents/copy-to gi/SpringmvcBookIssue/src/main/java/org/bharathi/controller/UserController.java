package org.bharathi.controller;

import java.util.List;
import org.bharathi.exception.AccessDeniedException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.bharathi.error.ErrorDetails;

import org.bharathi.model.BookIssue;
import org.bharathi.model.User;
import org.bharathi.service.IBookIssueService;
import org.bharathi.service.IUserService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	IUserService userservice;
	
	@Autowired
	private IBookIssueService service;
	
	@Autowired
	IBookIssueService bookissueservice;
	
	Logger logger=LoggerFactory.getLogger(UserController.class);
	
	@GetMapping("/login")
	public String login(Map<String,Object> model)
	{
		User user=new User();
		model.put("user", user);
		return "loginform";
	}
	
	@PostMapping("/loginauthenticate")
	public String loginAuthenticate(@RequestParam Integer userId,@RequestParam String password, Map<String,Object> model,HttpSession session)
	{
		System.out.println(userId);
		System.out.println(password);
		String role;
		
		
		//ErrorDetails errordetail=new ErrorDetails();
		User user=userservice.loginAuthenticate(userId, password);	
		model.put("user", user);
			if(user==null)
		{
			session.setAttribute("msg", "Invalid Id or Password");
			return "redirect:/user/login";
		}
			
			else
				role=user.getRole();
			//System.out.println(role);
				session.setAttribute("userId", userId);
				session.setAttribute("role", role);
				return "home";
	}
	
	
	@GetMapping("/home")
	public String homepage()
	{
		
	
	
		System.out.println("Homepage is loaded");
		
		
		return "home";
	}
	
	
	
	
	
	
	@GetMapping("/about")
	public String aboutPage()
	{
		
	
	
		System.out.println("about page is loaded");
		
		
		return "about";
	}
	
	@GetMapping("/roleauthenticate")
	public String roleAuthenticate(Map<String,Object> model,HttpSession session)
	{
		User user=new User();
		model.put("user", user);
		
		String role = (String) session. getAttribute( "role" );
		Integer userid=(Integer)session.getAttribute("userId");
		
		
		System.out.println(role);
		System.out.println("roleauthenticate is loaded");
		
		 if(role.equals("student"))
				
			{
				List<BookIssue> bookissue=bookissueservice.getbyStdId(userid);
				model.put("bookissue", bookissue);
			logger.debug("Student access the account  with id : "+userid);	
				return "myaccount";
			}
		 
		 
		 
		 else if(role.equalsIgnoreCase("librarian"))
		 {
			   session.setAttribute("librarian", "librarian");
			 
				return "redirect:/booksissue/issuedbookslist";
		 }		 
			else if(role.equalsIgnoreCase("admin"))
			{
				 logger.debug("Admin checked in with the id ");	
				
				return "redirect:/user/userlist";
			}
		
		 else
			 
			 return "home";
		
	}
	
	
	
	
	
	
	
	

	
	@GetMapping("/adduser")
	public String addUserForm(Map<String,Object> model,HttpSession session) throws AccessDeniedException
	
	{
		String role = (String) session. getAttribute( "role" );
		System.out.println(role);
		if(role.equalsIgnoreCase("librarian"))
		{
			throw new AccessDeniedException("You don't have access to this page");

		}
		logger.debug("New user form is uploaded ");
		
		 if(role.equalsIgnoreCase("admin"))
		{
		User user=new User();
		model.put("user", user);
		
		
		}
		
		return "useraddform";
	}
	
	

	
	@PostMapping("/saveuser")
	public String addUser(@ModelAttribute User user,HttpSession session) {
		
		userservice.saveUser(user);
		session.setAttribute("msg", "User successfully added");
		
		logger.info("New user is added with id  :  "+user.getUserId());
		
		
		return "redirect:/user/adduser";
	}

	@GetMapping("/userlist")
	public String  userList(Map<String,Object> model,HttpSession session) throws AccessDeniedException
	{
		
		
		String role = (String) session. getAttribute( "role" );
		System.out.println(role);
		if(role.equalsIgnoreCase("librarian"))
		{
			throw new AccessDeniedException("You don't have access to this page");
			
		}
		if(role.equalsIgnoreCase("admin"))
		{
			List<User> users=userservice.getAllUsers();
		users.forEach(System.out::println);
		model.put("users", users);
		}
		return "userlist";
	}
	
	
	 @GetMapping("/deleteuser")
		public String deleteUser(@RequestParam Integer userId,HttpSession session)
		{
	    	userservice.deleteUser(userId);
			
	    	logger.info("User has been deleted with id  :  "+userId);
	    	session.setAttribute("deleteuser", "User with id  "+userId+" record is deleted");
	    	
			return "redirect:/user/userlist";
		}
	    
	@GetMapping("/updateuserform")
	 public String getupdateUser(@RequestParam Integer userId,Map<String,Object> model)
	 {
		 
		User user=  userservice.getUserById(userId);
		  
		model.put("user", user);
		return "userupdateform";
		 
	 }
	 
	@PostMapping("/updateuser")
	public String updateUser(@ModelAttribute User user,HttpSession session)
	{
		
		 userservice.saveUser(user);
		 
		 logger.info("User record is updated with id  : "+user.getUserId());
		 session.setAttribute("updateuser", "User with id  "+user.getUserId()+ " record is updated  ");
		
		return "redirect:/user/userlist";
	}
	
	 
}
