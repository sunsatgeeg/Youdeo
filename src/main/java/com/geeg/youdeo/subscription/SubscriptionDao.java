package com.geeg.youdeo.subscription;

import java.util.List;
import java.util.Map;

public interface SubscriptionDao {

	int create(Map map) throws Exception;

	int update(Subscription subscription) throws Exception;

	int remove(int s_no) throws Exception;

	List<Subscription> findSubscriptionList(String u_id) throws Exception;
	List<Subscription> findPopularUserList() throws Exception;

	
}
