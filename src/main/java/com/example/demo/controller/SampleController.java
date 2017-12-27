package com.example.demo.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/employee")
public class SampleController {
	
	@Autowired
    EmployeeRepository employeeRepository;
 
    @RequestMapping(method = RequestMethod.POST)
    public Employee create(@RequestBody Employee employee){
         
        Employee result = employeeRepository.save(employee);
        return result;
    }
     
    @RequestMapping(method = RequestMethod.GET, value="/{employeeId}")
    public Employee get(@PathVariable String employeeId){
        return employeeRepository.findOne(employeeId);
    }
     
     
	
	/*@RequestMapping("/welcome")
	public String welcome() {
		return "This is first Spring Boot Application";
	}*/

}

@RestController
@RequestMapping("/employee")
public class EmployeeController {
     
    @Autowired
    EmployeeRepository employeeRepository;
 
    @RequestMapping(method = RequestMethod.POST)
    public Employee create(@RequestBody Employee employee){
         
        Employee result = employeeRepository.save(employee);
        return result;
    }
     
    @RequestMapping(method = RequestMethod.GET, value="/{employeeId}")
    public Employee get(@PathVariable String employeeId){
        return employeeRepository.findOne(employeeId);
    }
     
     
}
