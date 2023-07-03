package org.bharathi.service;

import java.util.List;

import org.bharathi.model.User;

public interface IUserService {
	
	
	public void saveUser(User user);
	public User loginAuthenticate(Integer userId,String password);
	public List<User> getAllUsers();
	public void deleteUser(Integer userId);
public User getUserById(Integer userId);
}
