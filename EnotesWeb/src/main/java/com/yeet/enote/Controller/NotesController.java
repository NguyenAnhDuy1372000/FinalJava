package com.yeet.enote.Controller;

import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
@Transactional
public class NotesController {
	
	@Autowired
	PostService pservice;
	
	@Autowired 
	UserService uservice;
	
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
		List<Post> userPost = uservice.getAllPostByUser(currentUser);
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
		Post post = pservice.get(id);
		model.addAttribute("post",post);
		return "user/edit";
	}
	
	//EDIT
		@RequestMapping(value = {"/edit/{id}"},method = RequestMethod.POST)
		public String editnote(@PathVariable("id") int id,HttpServletRequest request , HttpSession session, Model model) {
			User currentUser = (User)session.getAttribute("user");
			if(currentUser == null) {
				return "redirect:/";
			}
			Post postdb = pservice.get(id);
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Date date = new Date();
			
			byte[] bytes = title.getBytes(StandardCharsets.ISO_8859_1);
			title = new String(bytes, StandardCharsets.UTF_8);
			byte[] bytes2 = content.getBytes(StandardCharsets.ISO_8859_1);
			content = new String(bytes2, StandardCharsets.UTF_8);
			
			postdb.setTitle(title);
			postdb.setContent(content);
			postdb.setPdate(date);
			pservice.save(postdb);
			Post postuser = currentUser.getPosts().stream().filter(x -> x.getId() == id).findFirst().get();
			postuser.setTitle(title);
			postuser.setContent(content);
			postuser.setPdate(date);

			pservice.flush();
			uservice.flush();
			
			return "redirect:/notes";
		}
	
	//DELETE
	@RequestMapping(value = {"/deletenote/{id}"},method = RequestMethod.GET)
	public String deleteNote(@PathVariable("id") int id, HttpSession session, Model model) {
		User currentUser = (User)session.getAttribute("user");
		if(currentUser == null) {
			return "redirect:/";
		}
		
		
		pservice.delete(id);
		Post postuser = currentUser.getPosts().stream().filter(x -> x.getId() == id).findFirst().get();
		currentUser.getPosts().remove(postuser);
		
		pservice.flush();
		uservice.flush();
		
		return "redirect:/notes";
	}
	
	//CREATE
	@RequestMapping(value = {"/addnote"},method = RequestMethod.POST)
	public String logincheck(HttpServletRequest request, Model model, HttpSession session) { 
		String title = request.getParameter("title");
		String content = request.getParameter("content");	
		byte[] bytes = title.getBytes(StandardCharsets.ISO_8859_1);
		title = new String(bytes, StandardCharsets.UTF_8);
		byte[] bytes2 = content.getBytes(StandardCharsets.ISO_8859_1);
		content = new String(bytes2, StandardCharsets.UTF_8);

		User currentUser = (User)session.getAttribute("user");
		
		Post post = new Post();
		post.setContent(content);
		post.setTitle(title);
		post.setPdate(new Date());
		post.setUser(currentUser);
		currentUser.getPosts().add(post);
		pservice.save(post);
		pservice.flush();
		uservice.flush();
		
		return "redirect:/notes";
	}
	
	
	
	
}
