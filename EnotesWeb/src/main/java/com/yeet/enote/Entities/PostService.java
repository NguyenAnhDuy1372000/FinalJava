package com.yeet.enote.Entities;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
@Transactional
public class PostService {
	
	@Autowired
	PostRepository postRepository ;
	
	public List<Post> listAll(int uid){
		return (List<Post>) postRepository.findAll();
	}

	
	public Post get(int id) {
		Optional<Post> result = postRepository.findById(id);
		return result.get();
	}
	public void save(Post post) {
		postRepository.save(post);
	}
	
	public void delete(int id) {
		postRepository.deleteById(id);
	}


	public void flush() {
		postRepository.flush();		
	}
	
}
