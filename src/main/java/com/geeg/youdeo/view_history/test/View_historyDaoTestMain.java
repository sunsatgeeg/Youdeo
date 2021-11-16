package com.geeg.youdeo.view_history.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.view_history.View_historyDao;
public class View_historyDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");

		View_historyDao view_historyDao = (View_historyDao) applicationContext.getBean("view_historyDao");
		System.out.println("\t" + view_historyDao);

		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", "sjssj7777");
		map.put("v_no", "1");
		
		//System.out.println("\t1. createView_history -->" + view_historyDao.create(map));
		
		System.out.println("\t2. findView_historyList --> " + view_historyDao.findView_historyList("sjssj7777"));

		//System.out.println("\t3. removeView_history --> " + view_historyDao.remove(6));
		
	}

}
