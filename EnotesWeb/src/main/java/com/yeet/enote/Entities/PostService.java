package com.yeet.enote.Entities;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



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
		postRepository.saveAndFlush(post);
	}
	
	public void delete(int id) {
		postRepository.deleteById(id);
	}


	public void flush() {
		postRepository.flush();
	}
	
}
