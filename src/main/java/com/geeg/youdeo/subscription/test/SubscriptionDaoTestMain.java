package com.geeg.youdeo.subscription.test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.subscription.Subscription;
import com.geeg.youdeo.subscription.SubscriptionDao;
import com.geeg.youdeo.user.User;

public class SubscriptionDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");

		SubscriptionDao subscriptionDao = (SubscriptionDao) applicationContext.getBean("subscriptionDao");
		System.out.println("\t" + subscriptionDao);

		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", "sjssj7777");
		map.put("s_id", "admin");
		
		System.out.println("\t1. createSubscription -->" + subscriptionDao.create(map));
		
		System.out.println("\t2. findSubscriptionList --> " + subscriptionDao.findSubscriptionList("sjssj7777"));
		
		//System.out.println("\t3. updateSubscription -- > " + subscriptionDao.update(new Subscription(1, null, null, 0)));
		
		System.out.println("\t4. removeSubscription --> " + subscriptionDao.remove(1));
		
	}

}
