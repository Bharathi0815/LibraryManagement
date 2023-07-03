package org.bharathi.service;

import org.bharathi.dao.IContactRepo;
import org.bharathi.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ContactServiceImpl implements IContactService {
	@Autowired
	IContactRepo repo;
	

	@Override
	public void saveContact(Contact contact) {
		repo.save(contact);		
	}

}
