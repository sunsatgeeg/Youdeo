package com.geeg.youdeo.member;

import java.util.List;

public interface MemberDao {
	
	/*
	 * 사용자관리테이블에 새로운사용자생성
	 */
	int create(Member member) throws Exception;

	/*
	 * 기존의 사용자정보를 수정
	 */
	int update(Member member) throws Exception;

	/*
	 * 사용자아이디에해당하는 사용자를 삭제
	 */
	int remove(String memberId) throws Exception;

	/*
	 * 사용자아이디에해당하는 정보를 데이타베이스에서 찾아서 Member 도메인클래스에 저장하여 반환
	 */
	Member findMember(String memberId) throws Exception;

	/*
	 * 모든사용자 정보를 데이타베이스에서 찾아서 List<Member> 콜렉션 에 저장하여 반환
	 */
	List<Member> findMemberList() throws Exception;

	/*
	 * 인자로 전달되는 아이디를 가지는 사용자가 존재하는지의 여부를판별
	 */
	boolean existedMember(String memberId) throws Exception;
	
	
}
