package com.amoto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.amoto.po.Course;
import com.amoto.po.MarkTable;
import com.amoto.service.CourseService;
import com.amoto.service.MarkTableService;

@Controller
public class StudentController {

	@Autowired
	private CourseService courseService;
	@Autowired
	private MarkTableService markTableService;

	@GetMapping("/student/myMarkTables/{stuId}")
	public String findMtByTeaId(Model model, @PathVariable Integer stuId) {
		List<MarkTable> mtList = markTableService.findMtByStu(stuId);
		model.addAttribute("mtList", mtList);
		return "markTable3";
	}

	@GetMapping("/student/myCourses/{stuId}")
	public String findTeaCurByTeaId(Model model, @PathVariable Integer stuId) {
		List<Course> stuCurList = courseService.findCurByStu(stuId);
		model.addAttribute("stuCurList", stuCurList);
		return "stuCur";
	}

}
