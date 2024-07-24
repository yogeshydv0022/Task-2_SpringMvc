package com.files.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.files.entities.Student;
import com.files.entities.StudentDao;

@Controller
public class MyController {

	@Autowired
	private StudentDao studentDao;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/students", method = RequestMethod.GET)
	public String listStudents(Model model) {
		model.addAttribute("students", studentDao.getAllStudents());
		return "students";
	}

	@RequestMapping(value = "/studentdetails", method = RequestMethod.GET)
	public String studentDetail(@RequestParam("id") int id, Model model) {
		Student student = studentDao.getStudentById(id);
		model.addAttribute("student", student);
		return "studentDetails";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView showEditForm(@RequestParam("id") int id) {
		Student student = studentDao.getStudentById(id);
		if (student == null) {
			return new ModelAndView("error", "message", "Student not found");
		}
		ModelAndView modelAndView = new ModelAndView("editStudent");
		modelAndView.addObject("student", student);
		return modelAndView;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateStudent(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("className") String className, @RequestParam("address") String address,
			@RequestParam("subjects") String subjects, @RequestParam("behavior") String behavior) {
		Student updatedStudent = new Student();
		updatedStudent.setId(id);
		updatedStudent.setName(name);
		updatedStudent.setClassName(className);
		updatedStudent.setAddress(address);
		updatedStudent.setSubjects(subjects);
		updatedStudent.setBehavior(behavior);
		studentDao.updateStudentById(id, updatedStudent);
		return "redirect:/students";
	}

}
