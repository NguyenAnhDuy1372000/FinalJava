package com.yeet.enote.Controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	//RETURN_CREATE_VIEW
	@RequestMapping(value = {"/newNote"},method = RequestMethod.GET)
	public String addNote(HttpSession session) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		return "user/addNotes";
	}
	
	//LIST POST
	@RequestMapping(value = {"/notes"},method = RequestMethod.GET)
	public String showNotes(HttpSession session, Model model) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		List<Post> userPost = null;
		userPost = uservice.getAllPostByUser(currentUser);
		//em.refresh
		model.addAttribute("posts", userPost);
		
		return "user/showNotes";
	}
	
	//RETURN_EDIT_VIEW
	@RequestMapping(value = {"/editnote/{id}"},method = RequestMethod.GET)
	public String editNote(@PathVariable("id") int id, HttpSession session, Model model) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		return "user/edit";
	}
	
	//DELETE
	@RequestMapping(value = {"/deletenote/{id}"},method = RequestMethod.POST)
	public String deleteNote(@PathVariable("id") int id, HttpSession session, Model model) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		pservice.delete(id);
		return "redirect:/";
	}
	
	//CREATE
	@RequestMapping(value = {"/addnote"},method = RequestMethod.POST)
	public String logincheck(HttpServletRequest request, Model model, HttpSession session) { 
		String title = request.getParameter("title");
		String content = request.getParameter("content");	
		
		Post post = new Post();
		post.setContent(content);
		post.setTitle(title);

		pservice.save(post);
		
		return "redirect:/shownote";
	}
	
	
	
	
}
