package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.CourseDao;
import com.amoto.po.Course;
import com.amoto.service.CourseService;

@Transactional
@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDao courseDao;

	public int addCur(Course cur) {
		return courseDao.addCur(cur);
	}

	public int deleteCur(Integer curId) {
		return courseDao.deleteCur(curId);
	}

	public int updateCur(Course cur) {
		return courseDao.updateCur(cur);
	}

	public List<Course> selectAllCur() {
		return courseDao.selectAllCur();
	}

	public List<Course> selectAllCurTea() {
		return courseDao.selectAllCurTea();
	}

	public Course findCurById(Integer curId) {
		return courseDao.findCurById(curId);
	}

	public List<Course> findCurByName(String curName) {
		return courseDao.findCurByName(curName);
	}

	public List<Course> findCurOne(Course cur) {
		return courseDao.findCurOne(cur);
	}

	public List<Course> findCurByTea(Integer teaId) {
		return courseDao.findCurByTea(teaId);
	}

	public List<Course> findCurByCla(Integer claId) {
		return courseDao.findCurByCla(claId);
	}

	public List<Course> findCurByStu(Integer stuId) {
		return courseDao.findCurByStu(stuId);
	}

}
