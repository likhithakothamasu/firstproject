package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;

public interface AdminService 
{ 
  public List<Course> displayAllCourses();
  public List<Faculty> displayAllFaculty();
  
  public Faculty displayFacultyById(int fid);
  public Course displayCourseById(int cid); 
  
  public String facultyCourseMapping(FacultyCourseMapping fcm);
  public List<FacultyCourseMapping> displayFacultyCourseMapping();
  
  public long checkFacultyCourseMapping(Faculty f,Course c,int section);
}
