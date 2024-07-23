package com.files.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.files.entities.Student;
import com.files.entities.StudentDao;

@Controller

public class MyController {

	@Autowired
	private StudentDao studentDao;

	@RequestMapping(value = "/students", method = RequestMethod.GET)
	public String listStudents(Model model) {
		model.addAttribute("students", studentDao.getAllStudents());
		return "students";
	}

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/studentdetails/{id}", method = RequestMethod.GET)
	public String studentDetails(@PathVariable("id") int id, Model model) {
		Student student=studentDao.getStudentById(id);
		System.out.println(student);
		model.addAttribute("student",student );
		
		return "studentDetails";
	}

}
