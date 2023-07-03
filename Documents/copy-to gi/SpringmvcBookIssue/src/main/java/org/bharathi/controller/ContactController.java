package org.bharathi.controller;

import java.util.Map;

import org.bharathi.model.Contact;
import org.bharathi.service.IContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contact")
public class ContactController {
	
	@Autowired
	IContactService service;
	
	
	
	@GetMapping("/contactus")
	public String contactusPage(Map<String,Object> model)
	{
		
	    Contact contact=new Contact();
	    model.put("contact", contact);
	
		System.out.println("contactus is loaded");
		
		
		return "contactus";
	}
	
	@PostMapping("/savecontact")
	public String saveContact(@ModelAttribute Contact contact)
	{
		
		service.saveContact(contact);
		
		
		return "redirect:/contact/contactus";
	}
	

}
