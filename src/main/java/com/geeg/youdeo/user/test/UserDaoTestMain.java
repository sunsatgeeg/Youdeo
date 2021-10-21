package com.geeg.youdeo.user.test;

import java.util.Iterator;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.user.User;
import com.geeg.youdeo.user.UserDao;

public class UserDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/application-config.xml");

		UserDao userDao = (UserDao) applicationContext.getBean("userDao");
		System.out.println("\t" + userDao);

		System.out.println("\t1. createUser -->" + userDao.create(new User("sjssj7777","test","한상길","sjssj7777@naver.com","01041871578")));
		
		System.out.println("\t2. findUser --> " + userDao.findUser("sjssj7777"));

		System.out.println("\t3. findUserList --> " + userDao.findUserList());
		
		System.out.println("\t4. updateUser -- > " + userDao.update(new User("sjssj7777","admin2","admin2","admin2@youdeo.com","010-0000-0000")));
		
		//System.out.println("\t5. removeUser --> " + userDao.remove("sjssj7777"));
		
	}

}