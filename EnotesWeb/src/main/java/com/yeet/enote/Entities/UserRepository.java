package com.yeet.enote.Entities;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface UserRepository  extends JpaRepository<User, Integer>{

	@Query("SELECT u FROM User u WHERE u.email = ?1 AND u.password = ?2 ")
	public User login(String user, String password); 
	
	@Query("SELECT u FROM User u WHERE u.email = ?1")
	public User getUserByEmail(String email);
	
}
