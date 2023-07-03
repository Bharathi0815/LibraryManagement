package org.bharathi.service;

import java.util.List;
import java.util.Optional;

import org.bharathi.dao.IUserRepo;
import org.bharathi.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	IUserRepo repo;
	
	
	@Override
	public void saveUser(User user) {
		System.out.println("adduser method in serviceimpl");
		repo.save(user);
		
	}


	@Override
	public User loginAuthenticate(Integer userId, String password) {
		User user=repo.findByUserIdAndPassword(userId, password);
		return user;
	}


	@Override
	public List<User> getAllUsers() {
		List<User>users=repo.findAll();
		return users;
	}


	@Override
	public void deleteUser(Integer userId) {
		if(repo.existsById(userId))
			repo.deleteById(userId);
		
	}


	@Override
	public User getUserById(Integer userId) {
	Optional <User> user=repo.findById(userId);
	
	return user.get();
	}

}
