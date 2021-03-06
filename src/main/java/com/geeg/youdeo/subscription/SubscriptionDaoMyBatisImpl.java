package com.geeg.youdeo.subscription;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("subscriptionDao")
public class SubscriptionDaoMyBatisImpl implements SubscriptionDao {
	public final static String NAMESPACE = "com.geeg.youdeo.subscription.mapper.SubscriptionMapper.";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Map map) throws Exception {
		return sqlSession.insert(NAMESPACE + "create", map);
	}

	@Override
	public int update(Subscription subscription) throws Exception {
		return sqlSession.update(NAMESPACE + "update", subscription);
	}

	@Override
	public int remove(Map map) throws Exception {
		return sqlSession.delete(NAMESPACE + "remove", map);
	}

	@Override
	public boolean findExistedSubscription(Map map) throws Exception{
		int count = sqlSession.selectOne(NAMESPACE + "findExistedSubscription", map);
		if (count == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public List<Subscription> findSubscriptionList(String u_id) throws Exception {
		return sqlSession.selectList(NAMESPACE + "findSubscriptionList", u_id);
	}
	
	@Override
	public List<Subscription> findPopularUserList() throws Exception{
		return sqlSession.selectList(NAMESPACE + "findPopularUserList");
	}
	
	@Override
	public Subscription findSubscriptionCount(String u_id) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "findSubscriptionCount", u_id);
	}

}
