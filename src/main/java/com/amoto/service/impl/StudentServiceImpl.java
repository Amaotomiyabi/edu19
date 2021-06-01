package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.StudentDao;
import com.amoto.po.Student;
import com.amoto.service.StudentService;

@Transactional
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	public int addStu(Student stu) {
		return studentDao.addStu(stu);
	}

	public int addStuAll(Student stu) {
		return studentDao.addStuAll(stu);
	}

	public int deleteStu(Integer stuId) {
		return studentDao.deleteStu(stuId);
	}

	// 通过ID找到学生基本信息
	public Student findStuBasicById(Integer stuId) {
		return studentDao.findStuBasicById(stuId);
	}

	public int updateStu(Student stu) {
		return studentDao.updateStu(stu);
	}

	public List<Student> selectAllStu() {
		return studentDao.selectAllStu();
	}

	public List<Student> selectAllStuBasicInfo() {
		return studentDao.selectAllStuBasicInfo();
	}

	public Student findStuById(Integer stuId) {
		return studentDao.findStuById(stuId);
	}

	public Student findStuByNum(String stuNum) {
		return studentDao.findStuByNum(stuNum);
	}

	public List<Student> findStuByName(String stuName) {
		return studentDao.findStuByName(stuName);
	}

	public Student findStuByAccount(String stuAccount) {
		return studentDao.findStuByAccount(stuAccount);
	}

	// 修改基础信息
	public int updateStuBasic(Student stu) {
		return studentDao.updateStuBasic(stu);
	}

	public List<Student> findStuOne(Student stu) {
		return studentDao.findStuOne(stu);
	}

	public List<Student> findStuByCla(Integer claId) {
		return studentDao.findStuByCla(claId);
	}

	public List<Student> findStuByCur(Integer curTeaId) {
		return studentDao.findStuByCur(curTeaId);
	}

	public int deleteStuCur(Integer stuId, Integer curTeaId) {
		return studentDao.deleteStuCur(stuId, curTeaId);
	}

	public int addStuCur(Integer stuId, Integer curTeaId) {
		return studentDao.addStuCur(stuId, curTeaId);
	}

}
