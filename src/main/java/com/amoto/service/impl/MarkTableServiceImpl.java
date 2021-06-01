package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.MarkTableDao;
import com.amoto.po.MarkTable;
import com.amoto.service.MarkTableService;

@Transactional
@Service

public class MarkTableServiceImpl implements MarkTableService {

	@Autowired
	private MarkTableDao markTableDao;

	public int addMt(MarkTable mt) {
		return markTableDao.addMt(mt);
	}

	public int deleteMt(Integer mtId) {
		return markTableDao.deleteMt(mtId);
	}

	public int updateMt(MarkTable mt) {
		return markTableDao.updateMt(mt);
	}

	// 根据教师ID查找成绩
	public List<MarkTable> findMtByTeaId(Integer teaId) {
		return markTableDao.findMtByTeaId(teaId);
	}

	public List<MarkTable> selectAllMt() {
		return markTableDao.selectAllMt();
	}

	public MarkTable findMtById(Integer mtId) {
		return markTableDao.findMtById(mtId);
	}

	public List<MarkTable> findMtByStu(Integer stuId) {
		return markTableDao.findMtByStu(stuId);
	}

	public List<MarkTable> findMtByCur(Integer curId) {
		return markTableDao.findMtByCur(curId);
	}

}
