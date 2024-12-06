package com.klef.jfsd.springboot;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClientController
{
     @GetMapping("/")
     public String home() 
     {
    	 return "index"; //index.html
     }
     
     //display variable in demo.html
     @GetMapping("demo")
     public String demo(Model model)
     {
    	 model.addAttribute("name", "JFSD");
    	 return "demo";  //demo.html
     }
     
     
     @GetMapping("viewall")
     public String viewall(Model model)
     {
    	 List<Student> students = new ArrayList<Student>();
    	 students.add(new Student(1,"LIKHITHA","FEMALE",20.3));
    	 students.add(new Student(2,"SAI","MALE",15));
    	 students.add(new Student(3,"JFSD","MALE",4));
    	 students.add(new Student(4,"SUSMITHA","FEMALE",35));
    	 
    	 model.addAttribute("students", students);
    	 
    	 return "viewallstudents"; //viewallstudents.html
     }
}
