package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.ClassroomDao;
import com.amoto.po.Classroom;
import com.amoto.service.ClassroomService;

@Transactional
@Service
public class ClassroomServiceImpl implements ClassroomService {

	@Autowired
	private ClassroomDao classroomDao;

	public int addCla(Classroom cla) {
		return classroomDao.addCla(cla);
	}

	public int deleteCla(Integer claId) {
		return classroomDao.deleteCla(claId);
	}

	public int updateCla(Classroom cla) {
		return classroomDao.updateCla(cla);
	}

	public List<Classroom> selectAllCla() {
		return classroomDao.selectAllCla();
	}

	public Classroom findClaById(Integer claId) {
		return classroomDao.findClaById(claId);
	}

	public List<Classroom> findClaByName(String claName) {
		return classroomDao.findClaByName(claName);
	}

	public List<Classroom> findClaOne(Classroom cla) {
		return classroomDao.findClaOne(cla);
	}

	public List<Classroom> findClaByTea(Integer teaId) {
		return classroomDao.findClaByTea(teaId);
	}

	public int addClaStu(Integer claId, Integer stuId) {
		return classroomDao.addClaStu(claId, stuId);
	}

	public int deleteClaStu(Integer claId, Integer stuId) {
		return classroomDao.deleteClaStu(claId, stuId);
	}

	public List<Classroom> findClaByStu(Integer stuId) {
		return classroomDao.findClaByStu(stuId);
	}

	public List<Classroom> findClaByCur(Integer curId) {
		return classroomDao.findClaByCur(curId);
	}

	public int deleteClaCur(Integer claId, Integer curTeaId) {
		return classroomDao.deleteClaCur(claId, curTeaId);
	}

	public int addClaCur(Integer claId, Integer curTeaId) {
		return classroomDao.addClaCur(claId, curTeaId);
	}

}
