package com.yeet.enote.Controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yeet.enote.Entities.Post;
import com.yeet.enote.Entities.PostService;
import com.yeet.enote.Entities.User;
import com.yeet.enote.Entities.UserService;

@Controller
@RequestMapping("/")
public class NotesController {
	
	@Autowired
	PostService pservice;
	
	@Autowired 
	UserService uservice;
	
	@Autowired
	EntityManager em;
	
	@RequestMapping(value = {"/notes"},method = RequestMethod.GET)
	public String showNotes(HttpSession session, Model model) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		List<Post> userPost = uservice.getAllPostByUser(currentUser);
		model.addAttribute("posts", userPost);
		
		return "user/showNotes";
	}
	
	@RequestMapping(value = {"/newNote"},method = RequestMethod.GET)
	public String addNote() {
		return "user/addNotes";
	}
}
