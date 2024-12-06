package com.klef.jfsd.springboot.service;

import java.util.List;

public interface APIService 
{
	
   //Internal API - SpringBootRestAPIProject
   // object -->object(if we don't know the  type  of object type is object,here there is no model class) 
	
   public List<Object> displayAllStudents();
   public Object displayStudentById(int sid);
   
   //External API -JSON placeholder
   public List<Object> displayAllUsers();
   public Object displayUserById(int id);

   
   
}
