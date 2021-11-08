package com.geeg.youdeo.subscription;

import java.util.List;
import java.util.Map;

public interface SubscriptionService {

	int create(Map map) throws Exception;
	
	boolean findExistedSubscription(Map map) throws Exception;
	List<Subscription> findSubscriptionList(String u_id) throws Exception;
	List<Subscription> findPopularUserList() throws Exception;
	Subscription findSubscriptionCount(String u_id) throws Exception;
	
	int update(Subscription subscription) throws Exception;

	int remove(Map map) throws Exception;

}
