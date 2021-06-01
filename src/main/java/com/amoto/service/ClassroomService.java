package com.amoto.service;

import java.util.List;

import com.amoto.po.Classroom;

public interface ClassroomService {
	// 添加班级
	public int addCla(Classroom cla);

	// 删除班级
	public int deleteCla(Integer claId);

	// 更新班级信息
	public int updateCla(Classroom cla);

	// 查看所有班级
	public List<Classroom> selectAllCla();

	// 通过ID查找班级
	public Classroom findClaById(Integer claId);

	// 通过名字查找班级
	public List<Classroom> findClaByName(String claName);

	// 通过任意属性找到班级
	public List<Classroom> findClaOne(Classroom cla);

	// 通过辅导员查找班级
	public List<Classroom> findClaByTea(Integer teaId);

	// 添加班级成员学生
	public int addClaStu(Integer claId, Integer stuId);

	// 删除班级成员学生
	public int deleteClaStu(Integer claId, Integer stuId);

	// 查找学生所属班级
	public List<Classroom> findClaByStu(Integer stuId);

	// 通过课程查找班级
	public List<Classroom> findClaByCur(Integer curId);

	// 删除班级课程
	public int deleteClaCur(Integer claId, Integer curTeaId);

	// 添加班级课程
	public int addClaCur(Integer claId, Integer curTeaId);
}
