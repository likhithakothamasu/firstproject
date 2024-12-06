package com.klef.jfsd.springboot.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class APIServiceImpl implements APIService
{

  @Autowired
  private RestTemplate restTemplate;
  
  @Override
  public List<Object> displayAllPosts() {
    Object[] posts= restTemplate.getForObject("https://jsonplaceholder.typicode.com/posts", Object[].class);
    return Arrays.asList(posts);
  }

  @Override
  public Object displayPostById(int id) {
    return restTemplate.getForObject("https://jsonplaceholder.typicode.com/posts?id="+id, Object.class);
    
  }

}
