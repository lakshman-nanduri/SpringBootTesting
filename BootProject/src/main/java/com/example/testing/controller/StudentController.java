package com.example.testing.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.testing.entity.StudentEntity;
import com.example.testing.repository.StudentRepository;

@Controller
@RequestMapping("/student")
public class StudentController 
{
	@Autowired
	StudentRepository stdRepo;
	
	@RequestMapping("/studentPage")
     public String studentPage() {
		return "student_page"; 
     }
	
	@RequestMapping("/saveStudent")
	public String saveStudent(@ModelAttribute StudentEntity student, ModelMap result ){
		stdRepo.save(student);
		result.addAttribute("message", "registration success");
		return "student_page";
		
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam int id, ModelMap result) {
		stdRepo.deleteById(id);
		result.addAttribute("delete", "delete success");
		return "student_page";
		
	}
	
	@RequestMapping("/searchStudent")
	public String searchStudent(@PathVariable int id, ModelMap result) {
		try {
			System.out.println("inside 4");
		Optional<StudentEntity> st = stdRepo.findById(id);
		/*if(Optional.empty().isEmpty())*/
		if(st.isEmpty())
			 result.addAttribute("search", "not found");
		else
	    result.addAttribute("search", st.get().getName());
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "student_page";
		
	}
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@RequestParam int id, ModelMap result) {
		System.out.println("inside update student");
		Optional<StudentEntity> st = stdRepo.findById(id);
		if(st.isEmpty()) {
			result.addAttribute("updateMsg", "You are not an existing student");
		}else {
			result.addAttribute("studentDetails", st.get());
		}
		return "update_student";
	}
	
//	@RequestMapping("/saveUpdatedDetails")
//	public String saveUpdatedDetails(@ModelAttribute StudentEntity st, ModelMap result) {
//		stdRepo.save(st);
//		result.addAttribute("updateMsg", "your details updated successfully");
//		return "update_student";
//	}
	
	@PostMapping("/saveUpdatedDetails")
	public String saveUpdatedDetails(StudentEntity st, Model result) {
		stdRepo.save(st);
		result.addAttribute("updateMsg", "your details updated successfully");
		return "update_student";
	}
	
	@GetMapping("/listAllStudents")
	public String listAllStudents(Model result){
		List<StudentEntity> listStudents =  stdRepo.findAll();
		result.addAttribute("listStudents", listStudents);
		return "list_all_students";
		
	}
	
	
}
