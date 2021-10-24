package com.geeg.youdeo.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public int create(User user)throws Exception{
		//1.아이디중복체크
		if(userDao.existedUser(user.getU_id())) {
			//아이디중복
			return -1;
		}else {
			//아이디안중복
			//2.회원가입
			int insertRowCount=userDao.create(user);
			return insertRowCount;
		}
	}

	@Override
	public int login(String userId, String password) throws Exception {
		int result = -1;
		// 1. 아이디 존재여부
		User user = userDao.findUser(userId);
		if(user==null) {
			// 아이디 존재 안함
			result = 0;
		}else {
			// 아이디 존재 함
			if(user.getU_password().equals(password)) {
				// 패스워드 일치(로그인 성공)
				result = 2;
			}else {
				// 패스워드 불일치
				result = 1;
			}				
		}
		
		return result;
	}

	
	@Override
	public List<User> findUserList() throws Exception {
		return userDao.findUserList();
	}

	@Override
	public User findUser(String userId) throws Exception {
		return userDao.findUser(userId);
	}

	@Override
	public int update(User user) throws Exception {
		return userDao.update(user);
	}
	
	@Override
	public int updateVerified(User user) throws Exception {
		return userDao.updateVerified(user);
	}
	
	@Override
	public int remove(String userId) throws Exception {
		return userDao.remove(userId);
	}

	@Override
	public boolean isDuplcateUserId(String userId) throws Exception {
		boolean isExist = userDao.existedUser(userId);
		if(isExist) {
			return true;
		}else {
			return false;
		}
	}
	
}
