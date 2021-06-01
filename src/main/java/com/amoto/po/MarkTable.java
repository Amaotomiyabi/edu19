package com.amoto.po;

/*成绩表*/
public class MarkTable {
	private Integer mark_id;
	private Student student;
	private Course course;
	private double m_mark;
	private double m_grade_point;
	private double m_regular_grade;
	private double m_exam_mark;
	private double m_total_mark;

	public Integer getMark_id() {
		return mark_id;
	}

	public void setMark_id(Integer mark_id) {
		this.mark_id = mark_id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public double getM_mark() {
		return m_mark;
	}

	public void setM_mark(double m_mark) {
		this.m_mark = m_mark;
	}

	public double getM_regular_grade() {
		return m_regular_grade;
	}

	public void setM_regular_grade(double m_regular_grade) {
		this.m_regular_grade = m_regular_grade;
	}

	public double getM_exam_mark() {
		return m_exam_mark;
	}

	public void setM_exam_mark(double m_exam_mark) {
		this.m_exam_mark = m_exam_mark;
	}

	public double getM_total_mark() {
		return m_total_mark;
	}

	public void setM_total_mark(double m_total_mark) {
		this.m_total_mark = m_total_mark;
	}

	@Override
	public String toString() {
		return "MarkTable [mark_id=" + mark_id + ", student=" + student + ", course=" + course + ", m_mark=" + m_mark
				+ ", m_grade_point=" + m_grade_point + ", m_regular_grade=" + m_regular_grade + ", m_exam_mark="
				+ m_exam_mark + ", m_total_mark=" + m_total_mark + "]";
	}

	public double getM_grade_point() {
		return m_grade_point;
	}

	public void setM_grade_point(double m_grade_point) {
		this.m_grade_point = m_grade_point;
	}

}
