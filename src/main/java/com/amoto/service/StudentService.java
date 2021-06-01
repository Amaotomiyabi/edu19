package com.amoto.service;

import java.util.List;

import com.amoto.po.Student;

public interface StudentService {
	// 添加学生账号
	public int addStu(Student stu);

	// 添加学生完整信息
	public int addStuAll(Student stu);

	// 删除学生
	public int deleteStu(Integer stuId);

	// 更新学生信息
	public int updateStu(Student stu);

	// 查看所有学生
	public List<Student> selectAllStu();
	
	// 修改基础信息
	public int updateStuBasic(Student stu);

	// 通过ID找到学生基本信息
	public Student findStuBasicById(Integer stuId);

	// 查看所有学生基础信息
	public List<Student> selectAllStuBasicInfo();

	// 通过ID找到学生
	public Student findStuById(Integer stuId);

	// 通过学号找到学生
	public Student findStuByNum(String stuNum);

	// 通过名字找到学生
	public List<Student> findStuByName(String stuName);

	// 通过账号找到学生
	public Student findStuByAccount(String stuAccount);

	// 通过任意一个学生属性找到学生
	public List<Student> findStuOne(Student stu);

	// 搜索某班全体学生
	public List<Student> findStuByCla(Integer claId);

	// 搜索某课程下全体学生
	public List<Student> findStuByCur(Integer curTeaId);

	// 删除学生的选课
	public int deleteStuCur(Integer stuId, Integer curTeaId);

	// 增加学生的选课
	public int addStuCur(Integer stuId, Integer curTeaId);
}
