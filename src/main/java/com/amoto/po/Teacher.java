package com.amoto.po;

/*老师*/
public class Teacher {
	private Integer teacher_id; // ID
	private String teacher_name; // 姓名
	private String teacher_sex; // 性别
	private String teacher_phone; // 电话
	private String teacher_account; // 账号
	private String teacher_password; // 密码
	private String per_level = "02"; // 权限等级
	private Integer cur_teacher_info_id; // 课程识别ID

	public Integer getCur_teacher_info_id() {
		return cur_teacher_info_id;
	}

	public void setCur_teacher_info_id(Integer cur_teacher_info_id) {
		this.cur_teacher_info_id = cur_teacher_info_id;
	}

	public Integer getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getTeacher_name() {
		return teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

	public String getTeacher_sex() {
		return teacher_sex;
	}

	public void setTeacher_sex(String teacher_sex) {
		this.teacher_sex = teacher_sex;
	}

	public String getTeacher_phone() {
		return teacher_phone;
	}

	public void setTeacher_phone(String teacher_phone) {
		this.teacher_phone = teacher_phone;
	}

	public String getTeacher_account() {
		return teacher_account;
	}

	public void setTeacher_account(String teacher_account) {
		this.teacher_account = teacher_account;
	}

	public String getTeacher_password() {
		return teacher_password;
	}

	public void setTeacher_password(String teacher_password) {
		this.teacher_password = teacher_password;
	}

	public String getPer_level() {
		return per_level;
	}

	public void setPer_level(String per_level) {
		this.per_level = per_level;
	}

	@Override
	public String toString() {
		return "Teacher [teacher_id=" + teacher_id + ", teacher_name=" + teacher_name + ", teacher_sex=" + teacher_sex
				+ ", teacher_phone=" + teacher_phone + ", teacher_account=" + teacher_account + ", teacher_password="
				+ teacher_password + ", per_level=" + per_level + ", cur_teacher_info_id=" + cur_teacher_info_id + "]";
	}

}
