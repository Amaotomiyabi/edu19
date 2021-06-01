package com.amoto.po;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/*学生*/
public class Student {
	private Integer stu_id; // ID
	private String stu_num; // 学号
	private String stu_name; // 姓名
	private String stu_account; // 账号
	private String stu_password; // 密码
	private String per_level = "01"; // 权限等级
	private String stu_image; // 照片
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date stu_birthday; // 出生日期
	private String stu_sex; // 性别
	private String stu_iden_num; // 身份证号
	private String stu_nation; // 民族
	private String stu_phone; // 联系电话
	private String stu_political_outlook; // 政治面貌
	private String stu_major; // 专业
	private String stu_colleges; // 院校
	private String stu_addr; // 家庭住址

	public Integer getStu_id() {
		return stu_id;
	}

	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}

	public String getStu_num() {
		return stu_num;
	}

	public void setStu_num(String stu_num) {
		this.stu_num = stu_num;
	}

	public String getStu_name() {
		return stu_name;
	}

	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}

	public String getStu_account() {
		return stu_account;
	}

	public void setStu_account(String stu_account) {
		this.stu_account = stu_account;
	}

	public String getStu_password() {
		return stu_password;
	}

	public void setStu_password(String stu_password) {
		this.stu_password = stu_password;
	}

	public String getPer_level() {
		return per_level;
	}

	public void setPer_level(String per_level) {
		this.per_level = per_level;
	}

	public Date getStu_birthday() {
		return stu_birthday;
	}

	public void setStu_birthday(Date stu_birthday) {
		this.stu_birthday = stu_birthday;
	}

	public String getStu_sex() {
		return stu_sex;
	}

	public void setStu_sex(String stu_sex) {
		this.stu_sex = stu_sex;
	}

	public String getStu_iden_num() {
		return stu_iden_num;
	}

	public void setStu_iden_num(String stu_iden_num) {
		this.stu_iden_num = stu_iden_num;
	}

	public String getStu_nation() {
		return stu_nation;
	}

	public void setStu_nation(String stu_nation) {
		this.stu_nation = stu_nation;
	}

	public String getStu_phone() {
		return stu_phone;
	}

	public void setStu_phone(String stu_phone) {
		this.stu_phone = stu_phone;
	}

	public String getStu_political_outlook() {
		return stu_political_outlook;
	}

	public void setStu_political_outlook(String stu_political_outlook) {
		this.stu_political_outlook = stu_political_outlook;
	}

	public String getStu_major() {
		return stu_major;
	}

	public void setStu_major(String stu_major) {
		this.stu_major = stu_major;
	}

	public String getStu_colleges() {
		return stu_colleges;
	}

	public void setStu_colleges(String stu_colleges) {
		this.stu_colleges = stu_colleges;
	}

	@Override
	public String toString() {
		return "Student [stu_id=" + stu_id + ", stu_num=" + stu_num + ", stu_name=" + stu_name + ", stu_account="
				+ stu_account + ", stu_password=" + stu_password + ", per_level=" + per_level + ", stu_image="
				+ stu_image + ", stu_birthday=" + stu_birthday + ", stu_sex=" + stu_sex + ", stu_iden_num="
				+ stu_iden_num + ", stu_nation=" + stu_nation + ", stu_phone=" + stu_phone + ", stu_political_outlook="
				+ stu_political_outlook + ", stu_major=" + stu_major + ", stu_colleges=" + stu_colleges + ", stu_addr="
				+ stu_addr + "]";
	}

	public String getStu_image() {
		return stu_image;
	}

	public void setStu_image(String stu_image) {
		this.stu_image = stu_image;
	}

	public String getStu_addr() {
		return stu_addr;
	}

	public void setStu_addr(String stu_addr) {
		this.stu_addr = stu_addr;
	}

}
