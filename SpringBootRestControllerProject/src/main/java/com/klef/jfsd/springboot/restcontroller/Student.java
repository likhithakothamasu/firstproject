package com.klef.jfsd.springboot.restcontroller;

public class Student 
{
  private int id;
  private String name;
  private String department;
  
 //printing a object in string format 
@Override
public String toString() {
	return "Student [id=" + id + ", name=" + name + ", department=" + department + "]";
}

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
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
}
