package com.StudentInfo.StudentDao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.StudentInfo.Model.Student;

@Repository
public class StudentDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public int saveStudent(Student student) {
		Integer	n=0;
		try {
			n=(Integer) hibernateTemplate.save(student);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return n;
		
	}
	public List<Student> getAllStudents(){
		ArrayList<Student> students = null;
		try {
			students =(ArrayList<Student>) this.hibernateTemplate.loadAll(Student.class);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return students;
	}
	
	
	public Student getStudent(String prn) {
		Student student=null;
		try {
			student= hibernateTemplate.get(Student.class, prn);	
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return student;
	}
}
