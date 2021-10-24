package com.geeg.youdeo.video;

import java.util.Date;

import com.geeg.youdeo.user.User;

public class Video {
	private int v_no;
	private String v_title;
	private String v_description;
	private String v_date;
	private int v_time;
	private String v_category;
	private int v_views;
	private int v_good;
	private int v_bad;
	private User user;

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

	public Video(int v_no, String v_title, String v_description, String v_date, int v_time, String v_category,
			int v_views, int v_good, int v_bad, User user) {
		super();
		this.v_no = v_no;
		this.v_title = v_title;
		this.v_description = v_description;
		this.v_date = v_date;
		this.v_time = v_time;
		this.v_category = v_category;
		this.v_views = v_views;
		this.v_good = v_good;
		this.v_bad = v_bad;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Video [v_no=" + v_no + ", v_title=" + v_title + ", v_description=" + v_description + ", v_date="
				+ v_date + ", v_time=" + v_time + ", v_category=" + v_category + ", v_views=" + v_views + ", v_good="
				+ v_good + ", v_bad=" + v_bad + ", user=" + user + "]";
	}

	
	
}
