package com.amoto.service;

import java.util.List;

import com.amoto.po.Admin;

public interface AdminService {
	// 添加管理员
	public int addAdm(Admin adm);

	// 删除管理员
	public int deleteAdm(Integer admId);

	// 更新管理员信息
	public int updateAdm(Admin adm);

	// 查看所有管理员
	public List<Admin> selectAllAdm();

	// 通过ID找到管理员
	public Admin findAdmById(Integer admId);

	// 更新管理员部分信息
	public int updateAdmSome(Admin adm);

	// 通过名字找到管理员
	public List<Admin> findAdmByName(String admName);

	// 通过任意一个管理员属性找到管理员
	public List<Admin> findAdmOne(Admin adm);

	// 通过账号找到管理员
	public Admin findAdmByAccount(String admAccount);
}
