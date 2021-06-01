package com.amoto.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.amoto.po.Teacher;

public interface TeacherDao {
	// 添加老师
	public int addTea(Teacher tea);

	// 删除老师
	public int deleteTea(Integer teaId);

	// 更新老师信息
	public int updateTea(Teacher tea);

	// 查看所有老师
	public List<Teacher> selectAllTea();

	// 通过ID找到老师
	public Teacher findTeaById(Integer teaId);

	// 更新老师部分信息
	public int updateTeaSome(Teacher tea);

	// 通过名字找到老师
	public List<Teacher> findTeaByName(String teaName);

	// 通过任意一个老师属性找到老师
	public List<Teacher> findTeaOne(Teacher tea);

	// 通过账号找到老师
	public Teacher findTeaByAccount(String teaAccount);

	// 查看某班级的老师
	public Teacher findTeaByCla(Integer claId);

	// 查看某课程的老师
	public List<Teacher> findTeaByCur(Integer curId);

	// 增加老师任教课程
	public int addCurTea(@Param("curId") Integer curId, @Param("teaId") Integer teaId);

	// 删除老师任教课程
	public int deleteCurTea(@Param("curId") Integer curId, @Param("teaId") Integer teaId);

	// 更新老师任教课程
	public int updateCurTea(@Param("curId") Integer curId, @Param("teaId") Integer teaId);
}
