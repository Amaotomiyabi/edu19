package com.amoto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amoto.dao.AdminDao;
import com.amoto.po.Admin;
import com.amoto.service.AdminService;

@Transactional
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	public int addAdm(Admin adm) {
		return adminDao.addAdm(adm);
	}

	public int deleteAdm(Integer admId) {
		return adminDao.deleteAdm(admId);
	}

	public int updateAdm(Admin adm) {
		return adminDao.updateAdm(adm);
	}

	// 更新管理员部分信息
	public int updateAdmSome(Admin adm) {
		return adminDao.updateAdmSome(adm);
	}

	public List<Admin> selectAllAdm() {
		return adminDao.selectAllAdm();
	}

	public Admin findAdmById(Integer admId) {
		return adminDao.findAdmById(admId);
	}

	public List<Admin> findAdmByName(String admName) {
		return adminDao.findAdmByName(admName);
	}

	public List<Admin> findAdmOne(Admin adm) {
		return adminDao.findAdmOne(adm);
	}

	public Admin findAdmByAccount(String admAccount) {
		return adminDao.findAdmByAccount(admAccount);
	}

}
