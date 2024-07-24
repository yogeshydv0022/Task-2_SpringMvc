package com.files.entities;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class StudentDao {

	private HibernateTemplate hibernateTemplate;

	@Autowired
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void addStudent(Student student) {
		hibernateTemplate.persist(student);
	}

	public void updateStudentById(int id, Student updatedStudent) {
		Student existingStudent = hibernateTemplate.get(Student.class, id);
		if (existingStudent != null) {
			existingStudent.setName(updatedStudent.getName());
			existingStudent.setClassName(updatedStudent.getClassName());
			existingStudent.setAddress(updatedStudent.getAddress());
			existingStudent.setSubjects(updatedStudent.getSubjects());
			existingStudent.setBehavior(updatedStudent.getBehavior());
			hibernateTemplate.update(existingStudent);
		} else {
			throw new RuntimeException("Student with ID " + id + " not found.");
		}
	}

	public void deleteStudent(Student student) {
		hibernateTemplate.delete(student);
	}

	public Student getStudentById(int studentId) {
		return hibernateTemplate.get(Student.class, studentId);
	}

	public List<Student> getAllStudents() {
		return hibernateTemplate.loadAll(Student.class);
	}
}
