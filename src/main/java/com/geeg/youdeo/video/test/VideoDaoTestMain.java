package com.geeg.youdeo.video.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoDao;
public class VideoDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");

		VideoDao videoDao = (VideoDao) applicationContext.getBean("videoDao");
		System.out.println("\t" + videoDao);

		Map<String, String> map = new HashMap<String, String>();
		map.put("v_title", "제1목");
		map.put("v_description", "내1용");
		map.put("v_category", "호1러");
		map.put("u_id", "admin");
		
		//System.out.println("\t1. createVideo -->" + videoDao.create(map));
		
		System.out.println("\t2. findVideo --> " + videoDao.findVideo(1));

		System.out.println("\t3. searchVideoList --> " + videoDao.searchVideoList("1"));
		
		System.out.println("\t4. updateVideo -- > " + videoDao.update(new Video(5, "수정1제목", "수정내용", null, 0, "판타지", 0, 0, 0, null)));
		
		System.out.println("\t5. removeVideo --> " + videoDao.remove(6));
		
	}

}
