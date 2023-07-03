package org.bharathi.dao;

import org.bharathi.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserRepo extends JpaRepository<User, Integer> {
	
	
public	User findByUserIdAndPassword(Integer userId,String password);

}
