package org.bharathi.dao;

import org.bharathi.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IContactRepo extends JpaRepository<Contact, String> {

}
