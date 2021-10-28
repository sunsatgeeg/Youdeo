package com.geeg.youdeo.user;

import java.util.List;

public interface UserDao {
	
	int create(User user) throws Exception;

	int update(User user) throws Exception;
	int updatePassword(User user) throws Exception;
	int updateVerified(User user) throws Exception;
	int updateProfileImage(User user) throws Exception;
	int updateBannerImage(User user) throws Exception;

	int remove(String userId) throws Exception;

	User findUser(String userId) throws Exception;

	List<User> findUserList() throws Exception;

	boolean existedUser(String userId) throws Exception;
	
	
}
