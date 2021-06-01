package com.amoto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.amoto.po.MarkTable;
import com.amoto.service.MarkTableService;
import com.amoto.service.StudentService;

@Controller
public class MarkTableController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private MarkTableService markTableService;

	@GetMapping("/markTables")
	public String getAllMt(Model model) {
		List<MarkTable> mtList = markTableService.selectAllMt();
		model.addAttribute("mtList", mtList);
		return "markTable";

	}

	@PostMapping("/markTable")
	@ResponseBody
	public String addMt(MarkTable mt) {
		mt.getStudent().setStu_id(studentService.findStuByNum(mt.getStudent().getStu_num()).getStu_id());
		mt.setM_total_mark(mt.getM_exam_mark() + mt.getM_regular_grade());
		markTableService.addMt(mt);
		return "OK";
	}

	@PutMapping("/markTable")
	@ResponseBody
	public String updateMt(MarkTable mt) {
		mt.setM_total_mark(mt.getM_exam_mark() + mt.getM_regular_grade());
		markTableService.updateMt(mt);
		return "OK";
	}

	@DeleteMapping("/markTable")
	@ResponseBody
	public String deleteMt(Integer mtId) {
		markTableService.deleteMt(mtId);
		return "OK";
	}
	
}
