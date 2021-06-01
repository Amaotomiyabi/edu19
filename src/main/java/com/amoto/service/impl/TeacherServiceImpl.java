package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.TeacherDao;
import com.amoto.po.Teacher;
import com.amoto.service.TeacherService;

@Transactional
@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDao teacherDao;

	public int addTea(Teacher tea) {
		return teacherDao.addTea(tea);
	}

	public int deleteTea(Integer teaId) {
		return teacherDao.deleteTea(teaId);
	}

	public int updateTea(Teacher tea) {
		return teacherDao.updateTea(tea);
	}

	// 更新老师部分信息
	public int updateTeaSome(Teacher tea) {
		return teacherDao.updateTeaSome(tea);
	}

	public List<Teacher> selectAllTea() {
		return teacherDao.selectAllTea();
	}

	public Teacher findTeaById(Integer teaId) {
		return teacherDao.findTeaById(teaId);
	}

	public List<Teacher> findTeaByName(String teaName) {
		return teacherDao.findTeaByName(teaName);
	}

	public List<Teacher> findTeaOne(Teacher tea) {
		return teacherDao.findTeaOne(tea);
	}

	public Teacher findTeaByAccount(String teaAccount) {
		return teacherDao.findTeaByAccount(teaAccount);
	}

	public Teacher findTeaByCla(Integer claId) {
		return teacherDao.findTeaByCla(claId);
	}

	public List<Teacher> findTeaByCur(Integer curId) {
		return teacherDao.findTeaByCur(curId);
	}

	public int addCurTea(Integer curId, Integer teaId) {
		return teacherDao.addCurTea(curId, teaId);
	}

	public int deleteCurTea(Integer curId, Integer teaId) {
		return teacherDao.deleteCurTea(curId, teaId);
	}

	public int updateCurTea(Integer curId, Integer teaId) {
		return teacherDao.updateCurTea(curId, teaId);
	}

}
