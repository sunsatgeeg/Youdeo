package com.geeg.youdeo.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.subscription.SubscriptionService;
import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserService;

@RestController
public class SubscriptionRestController {
	@Autowired
	private SubscriptionService subscriptionService;
	@Autowired
	private UserService userService;
	
	@LoginCheck
	@PostMapping(value = "existedSubscriptionCheck", produces = "text/plain;charset=UTF-8")
	public String existedSubscriptionCheck(@RequestParam("target_s_id") String target_s_id, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", sUserId);
		map.put("s_id", target_s_id);
		boolean isDuplicate = subscriptionService.findExistedSubscription(map);
		
		return isDuplicate+"";
	}
	
	@LoginCheck
	@PostMapping(value = "subscrideUser", produces = "text/plain;charset=UTF-8")
	public String subscrideUser(@RequestParam("target_s_id") String target_s_id, @RequestParam("isSubscription") boolean isSubscription, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		String result;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", sUserId);
		map.put("s_id", target_s_id);
		
		if(isSubscription) {
			subscriptionService.remove(map);
			session.setAttribute("navSubList", subscriptionService.findSubscriptionList(sUserId));
			result = "Subscribe";
		}else {
			subscriptionService.create(map);
			session.setAttribute("navSubList", subscriptionService.findSubscriptionList(sUserId));
			User user = userService.findUser(target_s_id);
			result = "Subscribed|" + user.getU_name() + "|" + user.getU_profileimg();
		}
		
		return result;
	}
	
	
}
