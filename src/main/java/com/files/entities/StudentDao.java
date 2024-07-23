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

	public void updateStudent(Student student) {
		hibernateTemplate.update(student);
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
