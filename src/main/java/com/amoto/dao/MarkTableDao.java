package com.amoto.dao;

import java.util.List;

import com.amoto.po.MarkTable;

public interface MarkTableDao {
	// 增加一个成绩
	public int addMt(MarkTable mt);

	// 删除一个成绩
	public int deleteMt(Integer mtId);

	// 更新一个成绩信息
	public int updateMt(MarkTable mt);

	// 查看所有成绩信息
	public List<MarkTable> selectAllMt();

	// 根据成绩ID查找成绩
	public MarkTable findMtById(Integer mtId);

	// 根据学生ID查找成绩
	public List<MarkTable> findMtByStu(Integer stuId);

	// 根据课程ID查找成绩
	public List<MarkTable> findMtByCur(Integer curId);

	// 根据教师ID查找成绩
	public List<MarkTable> findMtByTeaId(Integer teaId);

}
