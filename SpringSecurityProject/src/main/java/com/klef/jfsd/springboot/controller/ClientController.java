package com.klef.jfsd.springboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClientController 
{
	@GetMapping("/")
	public String home()
	{
		return "I am in Public Page";
	}
	
	@GetMapping("user")
    public String user() 
	{
        return "Hello, User";
    }

    @GetMapping("admin")
    public String admin() 
    {
        return "Hello, Admin";
    }
}
