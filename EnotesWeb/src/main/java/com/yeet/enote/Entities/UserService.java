package com.yeet.enote.Entities;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserService {

	@Autowired
	UserRepository userRepository ;
	
	public List<User> listAll(){
		return (List<User>) userRepository.findAll();
	}

	
	public User get(int id) {
		Optional<User> result = userRepository.findById(id);
		return result.get();
	}
	
	public void save(User user) {
		userRepository.save(user);
	}
	
	public void delete(int id) {
		userRepository.deleteById(id);
	}
	
	public boolean login(String name, String password) {
		try {
			User user = userRepository.login(name, password);
			return !(user == null);
			
		} catch (Exception e) {
			return false;
		}
	}
	
	public User getUserByEmail(String email) {
		return userRepository.getUserByEmail(email);
	}


	public List<Post> getAllPostByUser(User currentUser) {
		return currentUser.getPosts();
	}
	
	public void flush() {
		userRepository.flush();
	}
}
