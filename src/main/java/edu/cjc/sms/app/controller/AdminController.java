package edu.cjc.sms.app.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.servicei.StudentServiceI;

@Controller
public class AdminController {
	
	@Autowired
	StudentServiceI ssi;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("username") String username,@RequestParam("password") String password, Model m)
	{
		if(username.equals("admin") && password.equals("admin"))
		{
		   List<Student> list = ssi.getallStudents();
		   m.addAttribute("data",list);
			return "adminscreen";
		}
		else
		{
			m.addAttribute("login_fail","Enter valid username and password");
			return "login";
		}
		
	}
	
	@RequestMapping("/enroll_student")
	public String saveStudentDetails(@ModelAttribute Student s,Model m)
	{
		ssi.saveStudentData(s);
		 List<Student> list = ssi.getallStudents();
		   m.addAttribute("data",list);
		 
		return "adminscreen";
	}
	@RequestMapping("/delete")
	public String removeStudent(@RequestParam("rollno") int rollno,Model m)
	{
		ssi.deleteStudent(rollno);
		List<Student> list = ssi.getallStudents();
		   m.addAttribute("data",list);
		 
		return "adminscreen";
	}
	@RequestMapping("/search")
	public String getStudentBatch(@RequestParam("batchNumber") String batchNumber, @RequestParam("batchMode") String batchMode,Model m)
	{
		List<Student> result=ssi.searchStudentByBatch(batchNumber,batchMode);
		
		   if(result.size()>0)
		   {
			   m.addAttribute("data", result);
		   }else {
			   List<Student> list  =ssi.getAllStudents();
				m.addAttribute("data", list);
				m.addAttribute("message","No record found for the Batch  "+batchNumber+"  "+batchMode);
		   }
		   return "adminscreen";
	
	}
	@RequestMapping("/fees")
	public String onFees(@RequestParam("rollno") int studentId,Model m)
	{
		Student stu=ssi.getSingleStudent(studentId);
		m.addAttribute("st",stu);
		return "fees";
	}
	@RequestMapping("/payfees")
	public String payFees(@RequestParam("studentid") int studentId,@RequestParam("ammount") double ammount,Model m)
	{
		 ssi.payFees(studentId,ammount);
		 List<Student> list = ssi.getallStudents();
	     m.addAttribute("data",list);
		return "adminscreen";
	}
	@RequestMapping("/shift")
	public String batchShift(@RequestParam("rollno") int studentId, Model m)
	{
		Student stu = ssi.getforBatchShiftingStudent(studentId);
		m.addAttribute("stu",stu);
		return "shiftbatch";
	}
	@RequestMapping("/shiftbatch")
	public String newBatch(@RequestParam("studentId") int studentId,@RequestParam("batchNumber") String batchNumber, Model m)
	{
         ssi.newbatchShift(studentId, batchNumber);
		
		List<Student> list = ssi.getAllStudents();
		m.addAttribute("data", list);
		return "adminscreen";
	}

}
