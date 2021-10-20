package com.geeg.youdeo.member.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.geeg.youdeo.member.Member;
import com.geeg.youdeo.member.MemberDao;

public class MemberDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");

		MemberDao memberDao = (MemberDao)applicationContext.getBean("memberDao");
		System.out.println(memberDao);
		//System.out.println(memberDao.create(new Member("sjssj7777","dlrn15","한상길","sjssj7777@naver.com","1998-01-24","01041871578")));
		System.out.println("2.findUser -->"+memberDao.findMember("sjssj7777"));

	}

}
