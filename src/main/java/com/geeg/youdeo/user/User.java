package com.geeg.youdeo.user;

public class User {
	private String u_id;
	private String u_password;
	private String u_name;
	private String u_email;
	private String u_phone;
	private int u_verified;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String u_id, String u_password, String u_name, String u_email, String u_phone, int u_verified) {
		super();
		this.u_id = u_id;
		this.u_password = u_password;
		this.u_name = u_name;
		this.u_email = u_email;
		this.u_phone = u_phone;
		this.u_verified = u_verified;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public int getU_verified() {
		return u_verified;
	}

	public void setU_verified(int u_verified) {
		this.u_verified = u_verified;
	}

	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_password=" + u_password + ", u_name=" + u_name + ", u_email=" + u_email
				+ ", u_phone=" + u_phone + ", u_verified=" + u_verified + "]";
	}

	// 패스워드 일치 여부 검사
	public boolean isMatchPassword(String password) {
		boolean isMatch = false;
		if (this.u_password.equals(password)) {
			isMatch = true;
		}
		return isMatch;
	}

}
