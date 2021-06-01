package edu19;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.amoto.po.Classroom;
import com.amoto.po.Course;
import com.amoto.po.Teacher;
import com.amoto.service.ClassroomService;
import com.amoto.service.CourseService;
import com.amoto.service.TeacherService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class AllTest1 {

	@Autowired
	private CourseService curService;
	@Autowired
	private ClassroomService claService;
	@Autowired
	private TeacherService teaService;

	@Test
	public void testCur() {
		Course cur = null;
		for (int i = 1; i <= 500; i++) {
			cur = new Course();
			cur.setCur_name("curname" + i);
			cur.setCur_time("curtime" + i);
			cur.setCur_mark(i);
			cur.setCur_grade_point(i + 1);
			cur.setCur_regular_grade(i + 2);
			cur.setCur_exam_mark(i + 3);
			cur.setCur_total_mark(i + 5);
			curService.addCur(cur);
		}
	}

	@Test
	public void testClass() {
		Classroom cla = null;
		Teacher tea = null;
		for (int i = 1; i <= 20; i++) {
			tea = new Teacher();
			tea.setTeacher_id(6997 + i);
			cla = new Classroom();
			cla.setClass_name("java16" + i);
			cla.setTeacher(tea);
			claService.addCla(cla);
		}
	}

	@Test
	public void testClaStu() {
		int a = 1;
		for (int i = 1; i <= 20; i++) {
			for (int j = a; j < 50 + a; j++) {
				claService.addClaStu(28 + i, 2015 + j);
			}
			a += 50;
		}
	}

	@Test
	public void testTeaCur() {
		int a = 1;
		for (int i = 1; i <= 200; i++) {
			for (int j = a; j < 6 + a; j++) {
				teaService.addCurTea(529 + j, 6998 + i);
			}
			if (i % 4 == 0)
				a += 6;
		}
	}

	@Test
	public void testClaCur() {
		int a = 1;
		for (int i = 1; i <= 20; i++) {
			for (int j = a; j < 20 + a; j++) {
				claService.addClaCur(28 + i, 1214 + j);
			}
			if (i % 10 == 0)
				a += 20;
		}
	}
}
