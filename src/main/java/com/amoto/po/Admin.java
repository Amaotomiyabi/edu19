package com.amoto.po;

/*管理员*/
public class Admin {
	private Integer admin_id; // ID
	private String admin_name; // 姓名
	private String admin_account; // 账号
	private String admin_password; // 密码
	private String admin_phone; // 电话
	private String per_level="03"; // 权限等级

	public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_account() {
		return admin_account;
	}

	public void setAdmin_account(String admin_account) {
		this.admin_account = admin_account;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}

	public String getPer_level() {
		return per_level;
	}

	public void setPer_level(String per_level) {
		this.per_level = per_level;
	}

	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", admin_name=" + admin_name + ", admin_account=" + admin_account
				+ ", admin_password=" + admin_password + ", admin_phone=" + admin_phone + ", per_level=" + per_level
				+ "]";
	}

}
