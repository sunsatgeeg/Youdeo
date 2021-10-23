package com.geeg.youdeo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}

	@PostMapping(value = "login_action")
	public String login_action_post(@ModelAttribute User user, HttpSession session, Model model) throws Exception {
		String forwardPath = "";
		
		int result = userService.login(user.getU_id(), user.getU_password());
		if(result == 0) {
			model.addAttribute("msg1", user.getU_id()+"는 존재하지 않는 아이디입니다.");
			model.addAttribute("fuser", user);
			forwardPath="login";
		}else if(result == 1) {
			model.addAttribute("msg2", "패스워드가 일치하지 않습니다.");
			model.addAttribute("fuser", user);
			forwardPath="login";
		}else if(result == 2) {
			session.setAttribute("sUserId", user.getU_id());
			forwardPath = "redirect:index";
		}
		
		return forwardPath; 
	}
	
	@GetMapping(value = "login_action")
	public String login_action_get() {
		return "redirect:index";
	}
	
	
}
