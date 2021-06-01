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
import com.amoto.service.ClassroomService;
import com.amoto.service.CourseService;
import com.amoto.service.StudentService;

@Controller
public class ClassroomController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private ClassroomService classroomService;
	@Autowired
	private CourseService courseService;

	@GetMapping("/classrooms")
	public String getAllCla(Model model) {
		List<Classroom> claList = classroomService.selectAllCla();
		model.addAttribute("claList", claList);
		return "classroom";
	}

	@PostMapping("/classroom")
	public String addCla(Classroom cla) {
		classroomService.addCla(cla);
		return "redirect:classrooms";
	}

	@PutMapping("/classroom")
	public String updateCla(Classroom cla) {
		classroomService.updateCla(cla);
		return "redirect:classrooms";
	}

	@DeleteMapping("/classroom")
	public String deleteCla(Integer claId) {
		classroomService.deleteCla(claId);
		return "redirect:classrooms";
	}

	@GetMapping("/classroom/courses/{claId}")
	public String getAllClaCur(Model model, @PathVariable Integer claId) {
		List<Course> claCurList = courseService.findCurByCla(claId);
		for(Course c:claCurList)
		{
			System.out.println(c.toString());
		}
		List<Course> curTeaList = courseService.selectAllCurTea();
		model.addAttribute("claCurList", claCurList);
		model.addAttribute("curTeaList", curTeaList);
		model.addAttribute("claId", claId);
		return "classCur";
	}

	@PostMapping("/classroom/course")
	@ResponseBody
	public String addClaCur(Integer claId, Integer curTeaId) {
		classroomService.addClaCur(claId, curTeaId);
		return "OK";
	}

	@DeleteMapping("/classroom/course")
	@ResponseBody
	public String deleteClaCur(Integer claId, Integer curTeaId) {
		classroomService.deleteClaCur(claId, curTeaId);
		return "OK";
	}

	@GetMapping("/classroom/students/{claId}")
	public String getAllClaStu(Model model, @PathVariable Integer claId) {
		List<Student> claStuList = studentService.findStuByCla(claId);
		List<Student> stuList = studentService.selectAllStuBasicInfo();
		model.addAttribute("claStuList", claStuList);
		model.addAttribute("stuList", stuList);
		model.addAttribute("claId", claId);
		return "classStu";
	}

	@PostMapping("/classroom/student")
	@ResponseBody
	public String addClaStu(Integer claId, Integer stuId) {
		classroomService.addClaStu(claId, stuId);
		return "OK";
	}

	@DeleteMapping("/classroom/student")
	@ResponseBody
	public String deleteClaStu(Integer claId, Integer stuId) {
		classroomService.deleteClaStu(claId, stuId);
		return "OK";
	}

}
