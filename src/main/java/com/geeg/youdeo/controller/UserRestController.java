package com.geeg.youdeo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.geeg.youdeo.user.UserService;

@RestController
public class UserRestController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/u_id_duplicate_check_rest", produces = "text/plain;charset=UTF-8")
	public String u_id_duplicate_check(@RequestParam String u_id) throws Exception{
		boolean isDuplicate= userService.isDuplcateUserId(u_id);
		return !isDuplicate+"";
	}
	
}
