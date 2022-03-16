package com.StudentInfo.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudentInfo.Model.Student;
import com.StudentInfo.StudentDao.StudentDao;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao studentDao;
	
	public int createStudent(Student student) {
		
		return this.studentDao.saveStudent(student);
	}
	public List<Student> getAllData(){
		ArrayList<Student> students= (ArrayList<Student>) studentDao.getAllStudents();
		
		return students;
	}
	
	public Student getStudentData(String prn){
		Student student=studentDao.getStudent(prn);
		return student;
	}

}
