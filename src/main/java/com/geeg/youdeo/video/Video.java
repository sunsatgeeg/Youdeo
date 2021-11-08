package com.geeg.youdeo.video;

import java.util.Date;

import com.geeg.youdeo.subscription.Subscription;
import com.geeg.youdeo.user.User;

public class Video {
	private int v_no;
	private String v_title;
	private String v_description;
	private String v_date;
	private int v_time;
	private String v_category;
	private String v_tag;
	private int v_views;
	private int v_good;
	private int v_bad;
	private User user;
	private String v_uuid;
	private Subscription subscription;

	public Video() {
		// TODO Auto-generated constructor stub
	}

	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
	}

	public String getV_title() {
		return v_title;
	}

	public void setV_title(String v_title) {
		this.v_title = v_title;
	}

	public String getV_description() {
		return v_description;
	}

	public void setV_description(String v_description) {
		this.v_description = v_description;
	}

	public String getV_date() {
		return v_date;
	}

	public void setV_date(String v_date) {
		this.v_date = v_date;
	}

	public int getV_time() {
		return v_time;
	}

	public void setV_time(int v_time) {
		this.v_time = v_time;
	}

	public String getV_category() {
		return v_category;
	}

	public void setV_category(String v_category) {
		this.v_category = v_category;
	}

	public String getV_tag() {
		return v_tag;
	}

	public void setV_tag(String v_tag) {
		this.v_tag = v_tag;
	}

	public int getV_views() {
		return v_views;
	}

	public void setV_views(int v_views) {
		this.v_views = v_views;
	}

	public int getV_good() {
		return v_good;
	}

	public void setV_good(int v_good) {
		this.v_good = v_good;
	}

	public int getV_bad() {
		return v_bad;
	}

	public void setV_bad(int v_bad) {
		this.v_bad = v_bad;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getV_uuid() {
		return v_uuid;
	}

	public void setV_uuid(String v_uuid) {
		this.v_uuid = v_uuid;
	}

	public Subscription getSubscription() {
		return subscription;
	}

	public void setSubscription(Subscription subscription) {
		this.subscription = subscription;
	}

	public Video(int v_no, String v_title, String v_description, String v_date, int v_time, String v_category,
			String v_tag, int v_views, int v_good, int v_bad, User user, String v_uuid, Subscription subscription) {
		super();
		this.v_no = v_no;
		this.v_title = v_title;
		this.v_description = v_description;
		this.v_date = v_date;
		this.v_time = v_time;
		this.v_category = v_category;
		this.v_tag = v_tag;
		this.v_views = v_views;
		this.v_good = v_good;
		this.v_bad = v_bad;
		this.user = user;
		this.v_uuid = v_uuid;
		this.subscription = subscription;
	}

	@Override
	public String toString() {
		return "Video [v_no=" + v_no + ", v_title=" + v_title + ", v_description=" + v_description + ", v_date="
				+ v_date + ", v_time=" + v_time + ", v_category=" + v_category + ", v_tag=" + v_tag + ", v_views="
				+ v_views + ", v_good=" + v_good + ", v_bad=" + v_bad + ", user=" + user + ", v_uuid=" + v_uuid
				+ ", subscription=" + subscription + "]";
	}

}
