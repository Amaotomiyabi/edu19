package com.amoto.po;

/*班级*/
public class Classroom {
	private Integer class_id; // 班级ID
	private String class_name; // 班级名称
	private Teacher teacher; // 班级辅导员

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	@Override
	public String toString() {
		return "Classroom [class_id=" + class_id + ", class_name=" + class_name + ", teacher=" + teacher + "]";
	}

	public Integer getClass_id() {
		return class_id;
	}

	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

}
