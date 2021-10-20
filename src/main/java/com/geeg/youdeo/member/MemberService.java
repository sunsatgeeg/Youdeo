package com.geeg.youdeo.member;

import java.util.List;

public interface MemberService {
	/*
	 * 회원가입
	 */
	int create(Member member) throws Exception;
	/*
	 * 회원로그인
	 */
	int login(String memberId, String password) throws Exception;
	/*
	 * 회원전체리스트
	 */
	List<Member> findMemberList() throws Exception;
	/*
	 * 회원1명보기
	 */
	Member findMember(String memberId) throws Exception;
	/*
	 * 회원수정
	 */
	int update(Member member) throws Exception;
	/*
	 * 회원탈퇴
	*/
	int remove(String memberId) throws Exception;
	/*
	 * 회원아이디중복체크
	*/
	boolean isDuplcateMemberId(String memberId) throws Exception;
	
}
