package com.geeg.youdeo.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDaoMyBatisImpl implements MemberDao{
	public final static String NAMESPACE="com.itwill.shop.user.mapper.MemberMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Member member) throws Exception {
		return sqlSession.insert(NAMESPACE+"create",member);
	}

	@Override
	public int update(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int remove(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member findMember(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existedMember(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
