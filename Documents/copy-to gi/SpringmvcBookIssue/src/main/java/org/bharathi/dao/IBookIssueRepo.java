package org.bharathi.dao;

import java.util.List;

import org.bharathi.model.BookIssue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface IBookIssueRepo extends JpaRepository<BookIssue, Integer> {
	
	List<BookIssue> findAllBystdId(Integer stdId);
	
	Integer countBystdId(Integer stdId);

}
