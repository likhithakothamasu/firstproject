package com.klef.jfsd.springboot;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.klef.jfsd.springboot.service.CalculatorService;

@SpringBootTest
public class DemoTest
{
	
	
	@Autowired
	private CalculatorService service;
	
    @Test
    public void testcase1()
    {
    	int result=service.add(10, 20);
    	assertEquals(30, result);
    }
    
    @Test
    public void testcase2()
    {
    	int result=service.sub(30, 15);
    	assertEquals(10, result);
    }
    @Test
    public void testcase3()
    {
    	int result=service.mul(10, 5);
    	assertEquals(50,result);
    }
    
    @Test
    public void testcase4()
    {
    	int result=service.mod(30, 15);
    	assertEquals(10, result);
    }
    @Test
    public void testcase5()
    {
    	int result=service.div(10, 15);
    	assertEquals(150, result);
    }
}
