package com.geeg.youdeo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.subscription.Subscription;
import com.geeg.youdeo.subscription.SubscriptionService;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoService;

@Controller
public class IndexController {
	
	@Autowired
	private SubscriptionService subscriptionService;
	@Autowired
	private VideoService videoService;
	
	@RequestMapping(value = {"index","/"})
	public String index(HttpSession session, Model model) throws Exception {
		String sUserId=(String)session.getAttribute("sUserId");
		
		if(sUserId == null) {
			List<Subscription> popularUserList = subscriptionService.findPopularUserList();
			model.addAttribute("subList", popularUserList);
		}else {
			List<Subscription> subscriptionList = subscriptionService.findSubscriptionList(sUserId);
			model.addAttribute("subList", subscriptionList);
		}
		
		List<Video> videoList = videoService.findVideoList();
		model.addAttribute("videoList", videoList);
		
		return "index";
	}
	
	
	
}
