package edu19;

import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.amoto.po.Admin;
import com.amoto.po.Student;
import com.amoto.po.Teacher;
import com.amoto.service.AdminService;
import com.amoto.service.StudentService;
import com.amoto.service.TeacherService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class AllTest {

	@Autowired
	private AdminService admService;
	@Autowired
	private StudentService stuService;
	@Autowired
	private TeacherService teaService;

	@Test
	public void testAdm() {
		Admin adm = null;
		for (int i = 1; i <= 1000; i++) {
			adm = new Admin();
			adm.setAdmin_account("admaccount" + i);
			adm.setAdmin_name("admname" + i);
			adm.setAdmin_password("admpassword" + i);
			adm.setAdmin_phone("admphone" + i);
			if (i <= 500)
				adm.setPer_level("03");
			admService.addAdm(adm);
		}
	}

	@Test
	public void testStu() {
		Student stu = null;
		for (int i = 1; i <= 1000; i++) {
			stu = new Student();
			stu.setStu_num("20161738" + i);
			stu.setStu_name("stuname" + i);
			stu.setStu_account("stuaccount" + i);
			stu.setStu_password("stupassword" + i);
			stu.setStu_image("stuimage" + i);
			stu.setStu_birthday(Date.valueOf("2016-02-01"));
			if (i <= 500)
				stu.setStu_sex("男");
			else
				stu.setStu_sex("女");
			stu.setStu_iden_num("43052219860516" + i);
			stu.setStu_nation("汉");
			stu.setStu_phone("1777458" + i);
			stu.setStu_political_outlook("团员");
			stu.setStu_major("会计" + i);
			stu.setStu_colleges("商学院" + i);
			stu.setStu_addr("中国" + i);
			stuService.addStuAll(stu);
		}
	}

	@Test
	public void testTea() {
		Teacher tea = null;
		for (int i = 1; i <= 1000; i++) {
			tea = new Teacher();
			tea.setTeacher_account("teaaccount" + i);
			tea.setTeacher_password("teapassword" + i);
			tea.setTeacher_name("teaname" + i);
			tea.setTeacher_phone("teaphone" + i);
			if (i <= 500)
				tea.setTeacher_sex("男");
			else
				tea.setTeacher_sex("女");
			teaService.addTea(tea);
		}
	}

}
