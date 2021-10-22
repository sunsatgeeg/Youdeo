package com.geeg.youdeo.subscription;

import com.geeg.youdeo.user.User;

public class Subscription {
	private int s_no;
	private User user;
	private String s_id;
	private int s_alram;

	public Subscription() {
		// TODO Auto-generated constructor stub
	}

	public Subscription(int s_no, User user, String s_id, int s_alram) {
		super();
		this.s_no = s_no;
		this.user = user;
		this.s_id = s_id;
		this.s_alram = s_alram;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public int getS_alram() {
		return s_alram;
	}

	public void setS_alram(int s_alram) {
		this.s_alram = s_alram;
	}

	@Override
	public String toString() {
		return "Subscription [s_no=" + s_no + ", user=" + user + ", s_id=" + s_id + ", s_alram=" + s_alram + "]";
	}

}