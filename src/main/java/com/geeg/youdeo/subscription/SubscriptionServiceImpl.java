package com.geeg.youdeo.subscription;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {
	@Autowired
	private SubscriptionDao subscriptionDao;
	
	@Override
	public int create(Map map) throws Exception{
		return subscriptionDao.create(map);
	}

	@Override
	public boolean findExistedSubscription(Map map) throws Exception{
		return subscriptionDao.findExistedSubscription(map);
	}
	
	@Override
	public List<Subscription> findSubscriptionList(String u_id) throws Exception {
		return subscriptionDao.findSubscriptionList(u_id);
	}
	
	@Override
	public List<Subscription> findPopularUserList() throws Exception {
		return subscriptionDao.findPopularUserList();
	}
	
	@Override
	public Subscription findSubscriptionCount(String u_id) throws Exception{
		return subscriptionDao.findSubscriptionCount(u_id);
	}

	@Override
	public int update(Subscription subscription) throws Exception {
		return subscriptionDao.update(subscription);
	}

	@Override
	public int remove(Map map) throws Exception {
		return subscriptionDao.remove(map);
	}

}
