package com.files.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "student")
public class Student {

    @Id
    private int id;
    private String name;
    private String className;
    private String address;
    private String subjects;
    private String behavior;

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSubjects() {
        return subjects;
    }

    public void setSubjects(String subjects) {
        this.subjects = subjects;
    }

    public String getBehavior() {
        return behavior;
    }

    public void setBehavior(String behavior) {
        this.behavior = behavior;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", className='" + className + '\'' +
                ", address='" + address + '\'' +
                ", subjects='" + subjects + '\'' +
                ", behavior='" + behavior + '\'' +
                '}';
    }

	public Student(int id, String name, String className, String address, String subjects, String behavior) {
		super();
		this.id = id;
		this.name = name;
		this.className = className;
		this.address = address;
		this.subjects = subjects;
		this.behavior = behavior;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
}

