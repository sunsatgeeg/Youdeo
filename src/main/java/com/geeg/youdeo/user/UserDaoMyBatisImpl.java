package com.geeg.youdeo.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoMyBatisImpl implements UserDao {
	public final static String NAMESPACE = "com.geeg.youdeo.user.mapper.UserMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(User user) throws Exception {
		return sqlSession.insert(NAMESPACE + "create", user);
	}

	@Override
	public int update(User user) throws Exception {
		return sqlSession.update(NAMESPACE + "update", user);
	}
	@Override
	public int updatePassword(User user) throws Exception {
		return sqlSession.update(NAMESPACE + "updatePassword", user);
	}
	@Override
	public int updateVerified(User user) throws Exception {
		return sqlSession.update(NAMESPACE + "updateVerified", user);
	}
	@Override
	public int updateProfileImage(User user) throws Exception{
		return sqlSession.update(NAMESPACE + "updateProfileImage", user);
	}
	@Override
	public int updateBannerImage(User user) throws Exception{
		return sqlSession.update(NAMESPACE + "updateBannerImage", user);
	}
	

	@Override
	public int remove(String userId) throws Exception {
		return sqlSession.delete(NAMESPACE + "remove", userId);
	}

	@Override
	public User findUser(String userId) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "findUser", userId);
	}

	@Override
	public List<User> findUserList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "findUserList");
	}

	@Override
	public boolean existedUser(String userId) throws Exception {
		int count = sqlSession.selectOne(NAMESPACE + "existedUser", userId);
		if (count == 1) {
			return true;
		} else {
			return false;
		}
	}

}
