package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.klef.jfsd.springboot.service.APIService;

@RestController
@RequestMapping("admin")
public class AdminController
{
@Autowired
private APIService apiService;
 @GetMapping("/")
 public String adminhome()
 {
	 return "I am Admin";
 }
 @GetMapping("viewallposts")
 public List<Object> viewallposts()
 {
	return apiService.displayAllPosts(); 
 }

 @GetMapping("displaypost")
 public Object displaypost(@RequestParam("id") int pid)
 {
	return apiService.displayPostById(pid);
 }
 
}
