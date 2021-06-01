package com.amoto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.amoto.po.Classroom;
import com.amoto.po.Course;
import com.amoto.po.Student;
import com.amoto.po.Teacher;
import com.amoto.service.ClassroomService;
import com.amoto.service.CourseService;
import com.amoto.service.StudentService;
import com.amoto.service.TeacherService;

@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;
	@Autowired
	private ClassroomService classroomService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;

	@GetMapping("/allCur")
	public String getAllCur(Model model) {
		List<Course> curList = courseService.selectAllCur();
		model.addAttribute("curList", curList);
		return "allCourse";
	}

	@PostMapping("/course")
	public String addCur(Course cur) {
		cur.setCur_total_mark(cur.getCur_exam_mark() + cur.getCur_regular_grade());
		courseService.addCur(cur);
		return "redirect:allCur";
	}

	@DeleteMapping("/course")
	public String deleteCur(Integer curId) {
		courseService.deleteCur(curId);
		return "redirect:allCur";
	}

	@PutMapping("/course")
	public String updateCur(Course cur) {
		cur.setCur_total_mark(cur.getCur_exam_mark() + cur.getCur_regular_grade());
		courseService.updateCur(cur);
		return "redirect:allCur";
	}

	@GetMapping("/course/teachers/{curId}")
	public String getAllCurTea(Model model, @PathVariable Integer curId) {
		List<Teacher> curTeaList = teacherService.findTeaByCur(curId);
		List<Teacher> teaList = teacherService.selectAllTea();
		model.addAttribute("curTeaList", curTeaList);
		model.addAttribute("teaList", teaList);
		model.addAttribute("curId", curId);
		return "curTea";
	}

	@PostMapping("/course/teacher")
	@ResponseBody
	public String addCurTea(Integer curId, Integer teaId) {
		teacherService.addCurTea(curId, teaId);
		return "OK";
	}

	@DeleteMapping("/course/teacher")
	@ResponseBody
	public String deleteCurTea(Integer curId, Integer teaId) {
		teacherService.deleteCurTea(curId, teaId);
		return "OK";
	}

	@GetMapping("/course/teacher/{curTeaId}/students")
	public String getAllCurStu(Model model, @PathVariable Integer curTeaId) {
		List<Student> curStuList = studentService.findStuByCur(curTeaId);
		List<Student> stuList = studentService.selectAllStuBasicInfo();
		model.addAttribute("curStuList", curStuList);
		model.addAttribute("stuList", stuList);
		model.addAttribute("curTeaId", curTeaId);
		return "curStu";
	}

	@PostMapping("/course/teacher/student")
	@ResponseBody
	public String addCurStu(Integer curTeaId, Integer stuId) {
		studentService.addStuCur(stuId, curTeaId);
		return "OK";
	}

	@DeleteMapping("/course/teacher/student")
	@ResponseBody
	public String deleteCurStu(Integer curTeaId, Integer stuId) {
		studentService.deleteStuCur(stuId, curTeaId);
		return "OK";
	}

	@GetMapping("/course/teacher/{curTeaId}/classrooms")
	public String getAllCurCla(Model model, @PathVariable Integer curTeaId) {
		List<Classroom> curClaList = classroomService.findClaByCur(curTeaId);
		List<Classroom> claList = classroomService.selectAllCla();
		model.addAttribute("curClaList", curClaList);
		model.addAttribute("claList", claList);
		model.addAttribute("curTeaId", curTeaId);
		return "curClass";
	}

	@PostMapping("/course/teacher/classroom")
	@ResponseBody
	public String addCurCla(Integer curTeaId, Integer claId) {
		classroomService.addClaCur(claId, curTeaId);
		return "OK";
	}

	@DeleteMapping("/course/teacher/classroom")
	@ResponseBody
	public String deleteCurCla(Integer curTeaId, Integer claId) {
		classroomService.deleteClaCur(claId, curTeaId);
		return "OK";
	}

}
