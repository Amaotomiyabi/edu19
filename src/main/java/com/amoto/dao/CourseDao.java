package com.amoto.dao;

import java.util.List;

import com.amoto.po.Course;

public interface CourseDao {
	// 添加课程
	public int addCur(Course cur);

	// 删除课程
	public int deleteCur(Integer curId);

	// 更新课程信息
	public int updateCur(Course cur);

	// 查看所有课程信息
	public List<Course> selectAllCur();

	// 查看当前已有任课老师课程
	public List<Course> selectAllCurTea();

	// 通过ID查找课程信息
	public Course findCurById(Integer curId);

	// 通过课程名字查找课程信息
	public List<Course> findCurByName(String curName);

	// 通过任意属性查找课程信息
	public List<Course> findCurOne(Course cur);

	// 查找老师所任教课程
	public List<Course> findCurByTea(Integer teaId);

	// 查找班级课程
	public List<Course> findCurByCla(Integer claId);

	// 查找学生选课
	public List<Course> findCurByStu(Integer stuId);

}
