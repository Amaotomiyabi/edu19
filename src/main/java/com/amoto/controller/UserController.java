package com.amoto.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.amoto.po.Admin;
import com.amoto.po.Student;
import com.amoto.po.Teacher;
import com.amoto.service.AdminService;
import com.amoto.service.StudentService;
import com.amoto.service.TeacherService;

@Controller
public class UserController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;

	@GetMapping("/login")
	public String toLogin() {
		return "login";
	}

	@PostMapping("/login")
	public String loginForUser(String account, String password, Model model, HttpSession session) {
		if (adminService.findAdmByAccount(account) != null) {
			Admin admin = adminService.findAdmByAccount(account);
			if (admin.getAdmin_password().equals(password)) {
				session.setAttribute("LEVEL_SESSION", admin.getPer_level());
				session.setAttribute("USER_SESSION", admin.getAdmin_name());
				session.setAttribute("ID_SESSION", admin.getAdmin_id());
				return "index";
			} else {
				model.addAttribute("login_status", "密码错误");
				return "login";
			}
		} else if (studentService.findStuByAccount(account) != null) {
			Student student = studentService.findStuByAccount(account);
			if (student.getStu_password().equals(password)) {
				session.setAttribute("LEVEL_SESSION", student.getPer_level());
				session.setAttribute("USER_SESSION", student.getStu_name());
				session.setAttribute("ID_SESSION", student.getStu_id());
				return "index";
			} else {
				model.addAttribute("login_status", "密码错误");
				return "login";
			}
		} else if (teacherService.findTeaByAccount(account) != null) {
			Teacher teacher = teacherService.findTeaByAccount(account);
			if (teacher.getTeacher_password().equals(password)) {
				session.setAttribute("LEVEL_SESSION", teacher.getPer_level());
				session.setAttribute("USER_SESSION", teacher.getTeacher_name());
				session.setAttribute("ID_SESSION", teacher.getTeacher_id());
				return "index";
			} else {
				model.addAttribute("login_status", "密码错误");
				return "login";
			}
		} else {
			model.addAttribute("login_status", "账号不存在");
			return "login";
		}

	}

	@GetMapping("/index")
	public String toInde() {
		return "index";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	@GetMapping("/error")
	public String toError(Model model) {
		return "error";
	}

	@GetMapping("/adminList")
	public String getAllAdmin(Model model) {
		List<Admin> admList = adminService.selectAllAdm();
		model.addAttribute("admList", admList);
		return "adminTable";
	}

	@PostMapping("/admin")
	public String addAdmin(Admin adm) {
		adminService.addAdm(adm);
		return "redirect:adminList";
	}

	@DeleteMapping("/admin")
	public String deleteAdmin(Integer admId) {
		adminService.deleteAdm(admId);
		return "redirect:adminList";
	}

	@PutMapping("/admin")
	public String updateAdmin(Admin adm) {
		adminService.updateAdm(adm);
		return "redirect:adminList";
	}

	@GetMapping("/teacherList")
	public String getAllTeacher(Model model) {
		List<Teacher> teaList = teacherService.selectAllTea();
		model.addAttribute("teaList", teaList);
		return "teaTable";
	}

	@PostMapping("/teacher")
	public String addTeacher(Teacher tea) {
		tea.setPer_level("02");
		teacherService.addTea(tea);
		return "redirect:teacherList";
	}

	@PutMapping("/teacher")
	public String updateTeacher(Teacher tea) {
		teacherService.updateTea(tea);
		return "redirect:teacherList";
	}

	@DeleteMapping("/teacher")
	public String deleteTeacher(Integer teaId) {
		teacherService.deleteTea(teaId);
		return "redirect:teacherList";
	}

	@GetMapping("/studentList")
	public String getAllStudent(Model model) {
		List<Student> stuList = studentService.selectAllStu();
		model.addAttribute("stuList", stuList);
		return "stuTable";
	}

	@PostMapping("/student")
	public String addStudent(Student stu) {
		if (stu.getStu_account() == null || stu.getStu_account() == "") {
			stu.setStu_account(stu.getStu_num());
		}
		stu.setPer_level("01");
		studentService.addStu(stu);
		return "redirect:studentList";
	}

	@PutMapping("/student")
	public String updateStudent(Student stu) {
		if (stu.getStu_account() == null || stu.getStu_account() == "") {
			stu.setStu_account(stu.getStu_num());
		}
		studentService.updateStu(stu);
		return "redirect:studentList";
	}

	@DeleteMapping("/student")
	public String deleteStudent(Integer stuId) {
		studentService.deleteStu(stuId);
		return "redirect:studentList";
	}

	@GetMapping("/student/info/{stuId}")
	public String findStuById(Model model, @PathVariable Integer stuId) {
		Student stu = studentService.findStuBasicById(stuId);
		model.addAttribute("stuInfo", stu);
		return "formStu";
	}

	@PutMapping("/student/info")
	@ResponseBody
	public String updateStuBasic(Student stu) {
		studentService.updateStuBasic(stu);
		return "OK";
	}

	@GetMapping("/student/info/all/{stuId}")
	public String findStuAllById(Model model, @PathVariable Integer stuId) {
		Student stu = studentService.findStuById(stuId);
		model.addAttribute("stuAllInfo", stu);
		return "formStu2";
	}

	@GetMapping("/teacher/info/{teaId}")
	public String findTeaById(Model model, @PathVariable Integer teaId) {
		Teacher tea = teacherService.findTeaById(teaId);
		model.addAttribute("teaInfo", tea);
		return "formTea";
	}

	@PutMapping("/teacher/info")
	@ResponseBody
	public String updateTeaSome(Teacher tea) {
		teacherService.updateTeaSome(tea);
		return "OK";
	}

	@GetMapping("/admin/info/{admId}")
	public String findAdmById(Model model, @PathVariable Integer admId) {
		Admin adm = adminService.findAdmById(admId);
		System.out.println(adm.toString());
		model.addAttribute("admInfo", adm);
		return "formAdm";
	}

	@PutMapping("/admin/info")
	@ResponseBody
	public String updateAdmSome(Admin adm) {
		adminService.updateAdmSome(adm);
		return "OK";
	}

}
