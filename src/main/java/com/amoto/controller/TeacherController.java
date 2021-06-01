package com.amoto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.amoto.po.Course;
import com.amoto.po.MarkTable;
import com.amoto.po.Student;
import com.amoto.service.CourseService;
import com.amoto.service.MarkTableService;
import com.amoto.service.StudentService;
import com.amoto.service.TeacherService;

@Controller
public class TeacherController {

	@Autowired
	private TeacherService teacherService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private MarkTableService markTableService;
	@Autowired
	private StudentService studentService;

	@GetMapping("/teacher/{teaId}/courses")
	public String getAllTeaCur(Model model, @PathVariable Integer teaId) {
		List<Course> teaCurList = courseService.findCurByTea(teaId);
		List<Course> curList = courseService.selectAllCur();
		model.addAttribute("teaCurList", teaCurList);
		model.addAttribute("curList", curList);
		model.addAttribute("teaId", teaId);
		return "teaCur";
	}

	@PostMapping("/teacher/course")
	@ResponseBody
	public String addTeaCur(Integer teaId, Integer curId) {
		teacherService.addCurTea(curId, teaId);
		return "OK";
	}

	@DeleteMapping("/teacher/course")
	@ResponseBody
	public String deleteTeaCur(Integer teaId, Integer curId) {
		teacherService.deleteCurTea(curId, teaId);
		return "OK";
	}

	@GetMapping("/teacher/myCourses/{teaId}")
	public String findTeaCurByTeaId(Model model, @PathVariable Integer teaId) {
		List<Course> teaCurList = courseService.findCurByTea(teaId);
		model.addAttribute("teaCurList", teaCurList);
		return "teaCur2";
	}

	@GetMapping("/teacher/myMarkTables/{teaId}")
	public String findMtByTeaId(Model model, @PathVariable Integer teaId) {
		List<MarkTable> mtList = markTableService.findMtByTeaId(teaId);
		model.addAttribute("mtList", mtList);
		return "markTable2";
	}

	@GetMapping("/teacher/myCourse/{curTeaId}/students")
	public String getTeaCurStu(Model model, @PathVariable Integer curTeaId) {
		List<Student> curStuList = studentService.findStuByCur(curTeaId);
		model.addAttribute("curStuList", curStuList);
		model.addAttribute("curTeaId", curTeaId);
		return "teaCurTea";
	}

}
