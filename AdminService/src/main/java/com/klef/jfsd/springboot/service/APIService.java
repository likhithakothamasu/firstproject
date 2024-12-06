package com.klef.jfsd.springboot.service;

import java.util.List;

public interface APIService 
{
public List<Object> displayAllPosts();
public Object displayPostById(int id);
}
