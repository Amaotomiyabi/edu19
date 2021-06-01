package com.amoto.po;

/*课程*/
public class Course {
	private Integer cur_id; // 课程ID
	private String cur_name; // 课程名称
	private String cur_time; // 课程学时
	private double cur_mark; // 课程学分
	private double cur_grade_point; // 课程绩点
	private double cur_regular_grade; // 课程平时成绩
	private double cur_exam_mark; // 课程测试成绩
	private double cur_total_mark; // 课程总分
	private Integer cur_teacher_id; // 课程-教师识别ID
	private Teacher teacher;

	public Integer getCur_teacher_id() {
		return cur_teacher_id;
	}

	public void setCur_teacher_id(Integer cur_teacher_id) {
		this.cur_teacher_id = cur_teacher_id;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Integer getCur_id() {
		return cur_id;
	}

	public void setCur_id(Integer cur_id) {
		this.cur_id = cur_id;
	}

	public String getCur_name() {
		return cur_name;
	}

	public void setCur_name(String cur_name) {
		this.cur_name = cur_name;
	}

	public String getCur_time() {
		return cur_time;
	}

	public void setCur_time(String cur_time) {
		this.cur_time = cur_time;
	}

	public double getCur_mark() {
		return cur_mark;
	}

	public void setCur_mark(double cur_mark) {
		this.cur_mark = cur_mark;
	}

	public double getCur_regular_grade() {
		return cur_regular_grade;
	}

	public void setCur_regular_grade(double cur_regular_grade) {
		this.cur_regular_grade = cur_regular_grade;
	}

	public double getCur_exam_mark() {
		return cur_exam_mark;
	}

	public void setCur_exam_mark(double cur_exam_mark) {
		this.cur_exam_mark = cur_exam_mark;
	}

	public double getCur_total_mark() {
		return cur_total_mark;
	}

	public void setCur_total_mark(double cur_total_mark) {
		this.cur_total_mark = cur_total_mark;
	}

	public double getCur_grade_point() {
		return cur_grade_point;
	}

	public void setCur_grade_point(double cur_grade_point) {
		this.cur_grade_point = cur_grade_point;
	}

	@Override
	public String toString() {
		return "Course [cur_id=" + cur_id + ", cur_name=" + cur_name + ", cur_time=" + cur_time + ", cur_mark="
				+ cur_mark + ", cur_grade_point=" + cur_grade_point + ", cur_regular_grade=" + cur_regular_grade
				+ ", cur_exam_mark=" + cur_exam_mark + ", cur_total_mark=" + cur_total_mark + ", cur_teacher_id="
				+ cur_teacher_id + ", teacher=" + teacher + "]";
	}

}
