package com.amoto.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.amoto.po.Classroom;

public interface ClassroomDao {
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
	public int addClaStu(@Param("claId") Integer claId, @Param("stuId") Integer stuId);

	// 删除班级成员学生
	public int deleteClaStu(@Param("claId") Integer claId, @Param("stuId") Integer stuId);

	// 查找学生所属班级
	public List<Classroom> findClaByStu(Integer stuId);

	// 通过课程查找班级
	public List<Classroom> findClaByCur(Integer curId);

	// 删除班级课程
	public int deleteClaCur(@Param("claId") Integer claId, @Param("curTeaId") Integer curTeaId);

	// 添加班级课程
	public int addClaCur(@Param("claId") Integer claId, @Param("curTeaId") Integer curTeaId);
}
