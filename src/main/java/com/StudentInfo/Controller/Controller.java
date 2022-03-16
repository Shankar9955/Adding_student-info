package com.StudentInfo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.RedirectViewControllerRegistration;

import java.util.*;

import com.StudentInfo.Model.AdminSearch;
import com.StudentInfo.Model.Student;
import com.StudentInfo.Model.StudentLogin;
import com.StudentInfo.Service.StudentService;

import antlr.collections.List;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(path = "/Login" )
	public String index() {
		return "Login";
	}
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String index(@ModelAttribute Student student ) {
		
		this.studentService.createStudent(student);
		return "redirect:/Login";
	}


	@RequestMapping(path = "/checkUser", method = RequestMethod.POST)
	public ModelAndView getData(@ModelAttribute StudentLogin studentLogin) {

		ModelAndView model = new ModelAndView();

//		Admin User Id and Password

		String id = "9955";
		String password = "9955";

//		User Side Data		
		String Uprn = studentLogin.getPrn();
		String Upassword = studentLogin.getPassword();

//		 Student Checking 

		Student student = studentService.getStudentData(Uprn);

		if (student != null && student.getPassword().equals(Upassword)) {

			model.addObject("student", student);
			model.setViewName("StudentHome");
		}

//		Admin Checking 

		else if (Uprn.equals(id) && Upassword.equals(password)) {
			
			model.setViewName("AdminHome");
		}

		else {
			model.setViewName("index");
			model.addObject("msg", "Sorry Invalid UserId or Password");
		}
		return model;
	}
	
	
//	Admin 

	@RequestMapping(path = "AdminSearch", method = RequestMethod.POST)
	public ModelAndView Admin(@ModelAttribute AdminSearch adminSearch) {

		ModelAndView modelAndView = new ModelAndView();

		String Uprn = adminSearch.getPrn();
		String getAll = adminSearch.getGetAll();

		if (getAll != null && getAll.equals("getAll")) {

			ArrayList<Student> students = (ArrayList<Student>) studentService.getAllData();
			if (students == null) {
				modelAndView.addObject("msg", "Student not found");
				modelAndView.setViewName("AdminSearch");
			}
			else {
				modelAndView.addObject("student", students);
				System.out.println(students);
				modelAndView.setViewName("AdminView");
			}

		}

		else if (Uprn != null) {
			Student student = studentService.getStudentData(adminSearch.getPrn());
			if(student == null) {
				modelAndView.addObject("msg", "Student not found");
				System.out.println(student);
				modelAndView.setViewName("AdminSearch");
			}
			else {
				modelAndView.addObject("student", student);
				System.out.println(student);
				modelAndView.setViewName("StudentHome");
			}
		}

		return modelAndView;
	}

	
}
