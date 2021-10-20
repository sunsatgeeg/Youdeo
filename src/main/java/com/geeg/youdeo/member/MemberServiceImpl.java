package com.geeg.youdeo.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public int create(Member member)throws Exception{
		//1.아이디중복체크
		if(memberDao.existedMember(member.getM_id())) {
			//아이디중복
			return -1;
		}else {
			//아이디안중복
			//2.회원가입
			int insertRowCount=memberDao.create(member);
			return insertRowCount;
		}
	}

	@Override
	public int login(String memberId, String password) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member findMember(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return null;
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
	public boolean isDuplcateMemberId(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	
}
